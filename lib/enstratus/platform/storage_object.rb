module Enstratus::Platform
  class StorageObject < Enstratus::Resource
    collects_as :storageObjects

    attribute :budget
    attribute :storage_object_id
    attribute :type

    # elements
    attribute :cloud
    attribute :container
    attribute :created_timestamp
    attribute :label
    attribute :last_modified_timestamp
    attribute :name
    attribute :owning_group
    attribute :owning_user
    attribute :provider_id
    attribute :read_any
    attribute :read_code
    attribute :read_group
    attribute :read_public
    attribute :region
    attribute :write_any
    attribute :write_code
    attribute :write_group
  end
end
