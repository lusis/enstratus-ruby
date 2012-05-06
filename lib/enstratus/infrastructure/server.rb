module Enstratus::Infrastructure

  class Server < Enstratus::Resource
    attribute :region
    attribute :platform
    attribute :budget
    attribute :start_date
    attribute :status
    attribute :data_center
    attribute :customer
    attribute :private_ip_addresses
    attribute :machine_image
    attribute :description
    attribute :name
    attribute :cloud
    attribute :provider_id
    attribute :public_ip_address
    attribute :server_id
    attribute :agent_version
    attribute :analytics
    attribute :imageable
    attribute :management_state
    attribute :persistent
    attribute :registered
    attribute :removable
    attribute :architecture
    attribute :create_timestamp
    attribute :label
    attribute :last_boot_timestamp
    attribute :last_pause_timestamp
    attribute :owning_account
    attribute :owning_user
    attribute :pause_after
    attribute :personalities
    attribute :platform
    attribute :prepayment
    attribute :private_dns_address
    attribute :product
    attribute :public_dns_address
    attribute :scripts
    attribute :terminate_after
    attribute :vlan
    attribute :termination_timestamp

    # (doc_error :undocumented)
    attribute :owning_groups
    attribute :stop_date
  end

end
