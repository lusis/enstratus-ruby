module Enstratus::Infrastructure
  class ServerProduct < Enstratus::Resource
    collects_as :serverProducts

    attribute :product_id
    attribute :architecture
    attribute :cloud
    attribute :cpu_count
    attribute :cpu_speed_in_mhz
    attribute :currency
    attribute :description
    attribute :disk_size_in_gb
    attribute :hourly_rate
    attribute :name
    attribute :platform
    attribute :provider_product_id
    attribute :provider_region_id
    attribute :ram_in_mb
    attribute :software
  end
end
