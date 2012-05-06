module Enstratus::Network
  class LoadBalancer < Enstratus::Resource

    collects_as :loadBalancers
    
    attribute :budget
    attribute :load_balancer_id
    attribute :removable
    attribute :status

    # elements
    attribute :address
    attribute :cloud
    attribute :cname_based
    attribute :customer
    attribute :description
    attribute :label
    attribute :listeners
    attribute :name
    attribute :owning_account
    attribute :owning_user
    attribute :owning_groups
    attribute :provider_id
    attribute :region
    attribute :servers
  end
end
