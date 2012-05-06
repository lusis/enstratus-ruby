module Enstratus::Automation
  class LaunchConfiguration < Enstratus::Resource
    collects_as :launchConfigurations

    attribute :launch_configuration_id
    attribute :status

    # elements
    attribute :array_volume_count
    attribute :auto_scaling_group
    attribute :burst_at
    attribute :configuration_management
    attribute :configuration_management_configuration
    attribute :customer
    attribute :deployment
    attribute :firewalls
    attribute :network
    attribute :personalities
    attribute :primary_machine_image
    attribute :primary_product
    attribute :raid_level
    attribute :recovery_delay_in_minutes
    attribute :region
    attribute :scripts
    attribute :secondary_machine_image
    attribute :secondary_product
    attribute :server_name_template
    attribute :server_type
    attribute :snapshot_interval_in_minutes
    attribute :subnet
    attribute :tier
    attribute :use_encrypted_volumes
    attribute :use_hypervisor_stats

  end
end
