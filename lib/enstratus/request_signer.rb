module Enstratus
  class RequestSigner
    attr_accessor :access_key, :secret_key, :request

    
    def initialize(request={:method => 'GET', :path => ''})
      @access_key ||= Enstratus.configuration.access_key
      @secret_key ||= Enstratus.configuration.secret_key
      @request ||= request
    end

    def sign
      ts = (Time.now.to_f * 1000).to_i
      parts = []
      parts << @access_key << @request[:method] << @request[:path] << ts << Enstratus::UA
      Base64.encode64(OpenSSL::HMAC.digest(
        OpenSSL::Digest::Digest.new('sha256'),
        @secret_key, parts.join(":"))).strip
    end
  end
end

