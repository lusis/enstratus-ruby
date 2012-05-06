module Enstratus::Network
  class DnsZone < Enstratus::Resource

    attribute :budget
    attribute :dns_zone_id
    attribute :removable
    attribute :status

    # elements
    attribute :cloud
    attribute :creation_timestamp
    attribute :customer
    attribute :last_change_timestamp
    attribute :owning_account
    attribute :description
    attribute :friendly_name
    attribute :label
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :provider_id
    attribute :records
  end
end
