module Enstratus::Admin
  class ApiKey < Enstratus::Resource
    collects_as :apiKeys

    attribute :api_key_id
    attribute :status

    # elements
    attribute :access_key
    attribute :account
    attribute :activation_timestamp
    attribute :cidr_list
    attribute :description
    attribute :expiration_timestamp
    attribute :configured
    attribute :name
    attribute :secret_key
    attribute :user

    # (docerror :undocumented)
    attribute :state
    attribute :activation
  end
end
