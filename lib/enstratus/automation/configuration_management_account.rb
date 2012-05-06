module Enstratus::Automation
  class ConfigurationManagementAccount < Enstratus::Resource
    collects_as :cmAccounts

    attribute :cm_account_id
    attribute :budget
    attribute :removable
    attribute :status

    # elements
    attribute :access_key
    attribute :account_number
    attribute :cm_service
    attribute :created_timestamp
    attribute :customer
    attribute :description
    attribute :guid
    attribute :label
    attribute :last_modified_timestamp
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :secret_key
  end
end
