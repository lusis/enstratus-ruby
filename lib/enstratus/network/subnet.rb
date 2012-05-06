module Enstratus::Network
  class Subnet < Enstratus::Resource
    
    attribute :budget
    attribute :subnet_id
    attribute :removable
    attribute :status

    # elements
    attribute :cloud
    attribute :customer
    attribute :data_center
    attribute :description
    attribute :guid
    attribute :label
    attribute :last_modified_timestamp
    attribute :name
    attribute :network
    attribute :network_address
    attribute :owning_account
    attribute :owning_groups
    attribute :owning_user
    attribute :provider_id
    attribute :region

    # (docerror :undocumented)
    attribute :created_timestamp
    attribute :account

  end
end
