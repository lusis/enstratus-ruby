module Enstratus::Automation
  class TierBackup < Enstratus::Resource

    attribute :tier_backup_id
    attribute :status
    
    # elements
    attribute :array
    attribute :end_timestamp
    attribute :error_message
    attribute :scaling_group
    attribute :region
    attribute :server
    attribute :start_timestamp
  end
end
