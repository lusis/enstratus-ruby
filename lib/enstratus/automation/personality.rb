module Enstratus::Automation
  class Personality < Enstratus::Resource
    collects_as :personalities

    attribute :budget
    attribute :personality_id
    attribute :removable
    attribute :shared_personality_code
    attribute :status

    # elements
    attribute :cm_account
    attribute :created_timestamp
    attribute :customer
    attribute :description
    attribute :label
    attribute :last_modified_timestamp
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :scripts
  end
end
