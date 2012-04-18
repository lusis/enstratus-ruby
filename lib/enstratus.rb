require "enstratus/version"

module Enstratus
  UA = "enstratus.rb"

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
