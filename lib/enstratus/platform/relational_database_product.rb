module Enstratus::Platform
  class RelationalDatabaseProduct < Enstratus::Resource
    # Example query
    # Enstratus::Platform::RelationalDatabaseProduct.all :regionId => 1, :engine => "MYSQL55"
    #
    collects_as :rdbmsProducts

    attribute :product_id
    attribute :status

    # elements
    attribute :architecture
    attribute :cloud
    attribute :core_count
    attribute :cpu_in_ghz
    attribute :custom_pricing
    attribute :description
    attribute :engine
    attribute :hourly_pricing
    attribute :io_pricing
    attribute :io_units
    attribute :maximum_storage_in_gb
    attribute :memory_in_gb
    attribute :minimum_storage_in_gb
    attribute :name
    attribute :region
    attribute :provider_id
    attribute :storage_pricing
    attribute :storage_units
  end
end
