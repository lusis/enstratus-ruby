module Enstratus::Finance
  class ServerPrepayment < Enstratus::Resource

    attribute :server_prepayment_id
    attribute :status

    # elements
    attribute :account
    attribute :billing_preferences
    attribute :cloud
    attribute :currency
    attribute :data_center
    attribute :description
    attribute :expiration
    attribute :fixed_fee
    attribute :guid
    attribute :hourly_fee
    attribute :label
    attribute :name
    attribute :owning_groups
    attribute :owning_user
    attribute :period_in_days
    attribute :period_start
    attribute :provider_id
    attribute :provider_product_id
    attribute :region
    attribute :server_count
  end
end
