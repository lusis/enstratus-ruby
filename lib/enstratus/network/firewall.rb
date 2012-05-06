module Enstratus::Network
  class Firewall < Enstratus::Resource

    attribute :budget
    attribute :firewall_id
    attribute :removable
    attribute :status

    # elements
    attribute :cloud
    attribute :customer
    attribute :description
    attribute :label
    attribute :name
    attribute :owning_account
    attribute :owning_groups
    attribute :owning_user
    attribute :provider_id
    attribute :region
    attribute :rules
  end
end
