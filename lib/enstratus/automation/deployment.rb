module Enstratus::Automation
  class Deployment < Enstratus::Resource

    attribute :budget
    attribute :deployment_id
    attribute :removable
    attribute :status
    attribute :type

    # elements
    attribute :backup_window
    attribute :creation_timestamp
    attribute :customer
    attribute :description
    attribute :dr_storage
    attribute :for_service_catalog
    attribute :label
    attribute :launch_timestamp
    attribute :load_balancers
    attribute :maintenance_window
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :reason_not_removable
    attribute :regions

    # (docerror :notdocumented)
    attribute :catalog_item
  end
end
