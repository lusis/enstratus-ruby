module Enstratus::Infrastructure
  class Volume < Enstratus::Resource

    attribute :available
    attribute :budget
    attribute :encrypted
    attribute :removable
    attribute :size_in_gb
    attribute :volume_id
    attribute :status
    attribute :array
    attribute :cloud
    attribute :creation_timestamp
    attribute :customer
    attribute :data_center
    attribute :description
    attribute :device_id
    attribute :label
    attribute :name
    attribute :owning_account
    attribute :owning_groups
    attribute :owning_user
    attribute :region
    attribute :server
    attribute :snapshot

    # doc_error :undocumented
    attribute :size_string
    attribute :provider_id
  end
end
