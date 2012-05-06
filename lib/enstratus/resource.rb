module Enstratus
  class Resource
    attr_reader :attributes

    def self.inherited(sub)
      sub.send :extend, Enstratus::ResourceClassMethods
    end

    def initialize(attrs = {})
      @attributes = {}
      update_attributes(attrs)
    end

    def attributes
      @attributes
    end

    def update_attributes(attrs)
      attrs.each {|k,v| send(:"#{k}=", v)}
    end

  end

  module ResourceClassMethods

    def url
      top, parent, local = self.name.split("::")
      url = "#{parent.downcase}/#{local}"
    end

    def collection_name
      n = "#{self.name.split("::")[-1].downcase}s"
      @collection_name || n
    end

    def collection_name=(name)
      @collection_name = name
    end

    def collects_as(name)
      self.collection_name = name.to_s
    end

    def connection(opts = {})
      opts[:id] ||= nil
      opts[:filters] ||= {}
      opts[:id].nil? ? path=url.dup : path="#{url.dup}/#{opts[:id]}"
      Enstratus::Request.new(path, opts[:filters])
    end

    def all(filters = {})
      all = []
      begin
        j = JSON.parse(self.connection(:filters => filters).get)
        j[self.collection_name].each do |x|
          s = self.new
          x.each do |k,v|
            s.send("#{k.to_underscore}=", v)
          end
          all << s
        end
        return all
      rescue Exception => e
        puts e
      end
    end

    def [](id)
      s = self.new
      begin
        j = JSON.parse(self.connection({:id => id}).get)
        j[self.collection_name].first.each do |k,v|
          s.send("#{k.to_underscore}=", v)
        end
        return s
      rescue Exception => e
        puts e
      end
    end

    def attribute(name, type=nil, read_only=true, required=true)
      define_method(name) do
        @attributes[name]
      end

      define_method(:"#{name}=") do |val|
        @attributes[name] = val
      end
    end

  end
end
