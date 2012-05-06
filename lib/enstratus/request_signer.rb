module Enstratus
  class RequestSigner
    attr_accessor :access_key, :secret_key, :request
    attr_reader :timestamp, :headers, :sig

    
    def initialize(request={:method => 'GET', :path => ''})
      @access_key ||= Enstratus.configuration.access_key
      @secret_key ||= Enstratus.configuration.secret_key
      @request ||= request
      @sig = sign
      @headers = {"User-agent" => Enstratus::UA, "x-esauth-access" => "#{@access_key}", "x-esauth-timestamp" => "#{@timestamp}", "x-esauth-signature" => @sig, "x-es-details" => "basic", "Accept" => "application/json"}
    end

    private
    def sign
      @timestamp = (Time.now.to_f * 1000).to_i
      parts = []
      parts << @access_key << @request[:method] << @request[:path] << @timestamp << Enstratus::UA
      Base64.encode64(OpenSSL::HMAC.digest(
        OpenSSL::Digest::Digest.new('sha256'),
        @secret_key, parts.join(":"))).strip
    end
  end
end

