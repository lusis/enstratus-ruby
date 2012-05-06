module Enstratus::Analytics
  class ServerAnalytics < Enstratus::Resource
    
    attribute :server_id

    # elements
    attribute :data_points
    attribute :interval_in_minutes
    attribute :period_end
    attribute :period_start
  end
end
