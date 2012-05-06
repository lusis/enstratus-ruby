module Enstratus::Automation
  class Script < Enstratus::Resource

    attribute :budget
    attribute :removable
    attribute :script_id
    attribute :shared_script_code
    attribute :status

    # elements
    attribute :cm_account
    attribute :content
    attribute :created_timestamp
    attribute :customer
    attribute :description
    attribute :label
    attribute :last_modified_timestamp
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :size_in_kb
    attribute :version
  end
end
