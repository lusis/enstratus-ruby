module Enstratus::Automation
  class ConfigurationManagementService < Enstratus::Resource
    collects_as :cmServices

    attribute :budget
    attribute :cm_service_id
    attribute :removable

    # elements
    attribute :cm_system
    attribute :customer
    attribute :description
    attribute :label
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :properties
    attribute :service_endpoint

    # (docerror :undocumented)
    attribute :status
  end
end
