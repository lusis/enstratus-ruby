module Enstratus
  class Request

    attr_accessor :namespace, :resource, :query_params
    attr_reader :connection

    def initialize(req_path, query_params={})
      req_path ||= 'geography/Cloud/1'
      @resource = "/api/enstratus/#{Enstratus.configuration.version}/#{req_path}"
      @connection = Excon.new(Enstratus.configuration.endpoint)
      @query_params = query_params 
    end

    [:get, :put, :post, :delete, :head].each do |meth|
      define_method(meth) do
        if @connection.respond_to?(meth)
          sig = gen_sig(meth.to_s.upcase, @resource)
          opts = {:path => @resource, :headers => sig.headers}
          opts.merge!(:query => @query_params) unless @query_params.empty?
          res = @connection.send(meth, opts)
          if Enstratus.debug?
            puts res.headers
            puts res.status
            puts res.body
          end
          res.body
        end
      end
    end

    private
    def gen_sig(method, path)
      signature = RequestSigner.new({:method => method, :path => path})
    end
  end
end
