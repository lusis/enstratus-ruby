module Enstratus
  class Request
    attr_accessor :namespace, :resource

    def initialize(namespace, resource)
      @namespace ||= namespace
      @resource ||= resource
      @connection = Excon.new(Enstratus.configuration.endpoint)
    end

    def get
      verb = 'GET'
    end

    def head
      verb = 'HEAD'
    end
    
    def put
      verb = 'PUT'
    end

    def post
      verb = 'POST'
    end

    def delete
      verb = 'DELETE'
    end

    private
    def gen_sig
      RequestSigner.new()
    end
  end
end
