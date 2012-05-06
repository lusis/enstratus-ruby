module Enstratus::Geography
  class Cloud < Enstratus::Resource

    attribute :cloud_id
    attribute :private_cloud
    attribute :status
    attribute :dasein_compute_delegate
    attribute :dasein_storage_delegate
    attribute :endpoint
    attribute :logo_url
    attribute :name
    attribute :provider
    attribute :status_url
    attribute :web_url
  end
end
