module Enstratus::Automation
  class Tier < Enstratus::Resource
    # all - requires deploymentId
    
    attribute :tier_id
    attribute :removable
    attribute :status

    # elements
    attribute :breach_increment
    attribute :breach_period_in_minutes
    attribute :cooldown_period_in_minutes
    attribute :description
    attribute :lable
    attribute :last_breach_change_timestamp
    attribute :lower_cpu_threshold
    attribute :lower_ram_threshold
    attribute :maximum_servers
    attribute :minimum_servers
    attribute :name
    attribute :scaling_rules
    attribute :upper_cpu_threshold
    attribute :upper_ram_threshold

    # (docerror :notdocumented)
    attribute :deployment
  end
end
