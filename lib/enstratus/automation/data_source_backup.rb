module Enstratus::Automation
  class DataSourceBackup < Enstratus::Resource
    # currently resulting in 404

    attribute :data_source_backup_id
    attribute :status

    # elements
    attribute :data_source
    attribute :data_source_image
    attribute :end_timestamp
    attribute :error_message
    attribute :server
    attribute :start_timestamp
  end
end
