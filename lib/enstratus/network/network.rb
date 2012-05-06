module Enstratus::Network
  class Network < Enstratus::Resource

    attribute :budget
    attribute :network_id
    attribute :removable
    attribute :status

    # elements
    attribute :agent_communication
    attribute :allow_subnet_creation
    attribute :can_have_subnets
    attribute :created_timestamp
    attribute :cloud
    attribute :data_center
    attribute :description
    attribute :dns_servers
    attribute :flat
    attribute :guid
    attribute :label
    attribute :last_modified_timestamp
    attribute :name
    attribute :network_address
    attribute :network_type
    attribute :ntp_servers
    attribute :owning_account
    attribute :owning_groups
    attribute :owning_user
    attribute :provider_id
    attribute :publicly_addressable
    attribute :region
    attribute :subnets

    # (docerror :undocumented)
    attribute :customer
    attribute :account
  end
end
