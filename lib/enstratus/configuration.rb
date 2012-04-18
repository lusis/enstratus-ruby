module Enstratus
  class Configuration
    attr_accessor :access_key, :secret_key, :endpoint, :version

    def initialize
      @access_key ||= '12345678'
      @secret_key ||= 'abcdefghi'
      @endpoint ||= 'https://api.enstratus.com'
      @version ||= '2011-12-15'
    end
  end
end
