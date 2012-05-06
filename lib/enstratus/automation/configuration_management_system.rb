module Enstratus::Automation
  class ConfigurationManagementSystem < Enstratus::Resource
    collects_as :cmSystems

    attribute :cm_system_id

    # elements
    attribute :customer
    attribute :description
    attribute :logo_url
    attribute :name
    attribute :private
    attribute :property_names
    attribute :type
    attribute :vendor
    
  end
end
