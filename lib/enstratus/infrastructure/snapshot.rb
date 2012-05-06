module Enstratus::Infrastructure
  class Snapshot < Enstratus::Resource

    attribute :available
    attribute :budget
    attribute :encrypted
    attribute :sharable
    attribute :removable
    attribute :snapshot_id
    attribute :status
    attribute :array
    attribute :cloud
    attribute :customer
    attribute :description
    attribute :label
    attribute :name
    attribute :owning_account
    attribute :owning_cloud_account_id
    attribute :owning_cloud_account_number
    attribute :owning_groups
    attribute :owning_user
    attribute :provider_id
    attribute :public
    attribute :region
    attribute :size_in_gb
    attribute :snapshot_timestamp
    attribute :volume

    # doc_error :undocumented
    attribute :created_timestamp
  end
end
