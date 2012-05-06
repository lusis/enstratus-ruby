module Enstratus::Infrastructure
  class MachineImage < Enstratus::Resource
    collects_as :images

    attribute :budget
    attribute :machine_image_id
    attribute :removable
    attribute :sharable
    attribute :status
    attribute :agent_version
    attribute :architecture
    attribute :cloud
    attribute :creation_timestamp
    attribute :customer
    attribute :label
    attribute :name
    attribute :owning_account
    attribute :owning_cloud_account_id
    attribute :owning_cloud_account_number
    attribute :owning_groups
    attribute :owning_user
    attribute :platform
    attribute :products
    attribute :provider_id
    attribute :public
    attribute :region

    # (doc_error: typo)
    attribute :desription
  end
end
