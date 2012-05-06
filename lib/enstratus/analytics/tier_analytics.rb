module Enstratus::Analytics
  class TierAnalytics < Enstratus::Resource
    
    attribute :tier_id

    # elements
    attribute :data_points
    attribute :interval_in_minutes
    attribute :period_end
    attribute :period_start
  end
end
