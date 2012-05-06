module Enstratus::Geography
  class DataCenter < Enstratus::Resource

    collects_as :dataCenters

    attribute :data_center_id
    attribute :status
    attribute :description
    attribute :name
    attribute :provider_id
    attribute :region

  end
end
