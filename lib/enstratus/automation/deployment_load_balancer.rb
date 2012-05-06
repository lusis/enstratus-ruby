module Enstratus::Automation
  class DeploymentLoadBalancer < Enstratus::Resource
    
    attribute :load_balancer_id
    attribute :scope
    attribute :type

    # elements
    attribute :firewalls
    attribute :machine_image
    attribute :product

  end
end
