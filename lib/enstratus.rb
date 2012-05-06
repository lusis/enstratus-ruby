require "enstratus/version"
require 'base64'
require 'openssl'
require 'excon'
require 'yaml'
require 'json'

module Enstratus
  UA = "enstratus.rb"

  class << self
    attr_accessor :configuration
  end

  def self.configure(config_file=nil)
    self.configuration ||= Configuration.new
    if config_file.nil?
      yield(configuration)
    else
      begin
        c = YAML.load(File.open(config_file, 'r'){|f| f.read})
        c.each do |k,v|
          self.configuration.instance_variable_set("@#{k}", v)
        end
      rescue Exception => e
        puts e.message
      end
    end
  end

  def self.debug?
    Enstratus.configuration.debug || false
  end

end

require 'enstratus/util'
require 'enstratus/configuration'
require 'enstratus/request_signer'
require 'enstratus/request'
require 'enstratus/resource'
require 'enstratus/platform'
require 'enstratus/infrastructure'
require 'enstratus/geography'
require 'enstratus/admin'
require 'enstratus/analytics'
require 'enstratus/automation'
require 'enstratus/finance'
require 'enstratus/network'
