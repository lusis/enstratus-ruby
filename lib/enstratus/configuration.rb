module Enstratus
  class Configuration
    attr_accessor :access_key, :secret_key, :endpoint, :version, :debug

    def initialize
      @access_key ||= '12345678'
      @secret_key ||= 'abcdefghi'
      @endpoint ||= 'https://api.enstratus.com'
      @version ||= '2012-02-29'
      @debug ||= false
    end
  end
end
