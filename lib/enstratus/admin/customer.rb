module Enstratus::Admin
  class Customer < Enstratus::Resource
    
    attribute :customer_id
    attribute :status

    # elements
    attribute :admin_email
    attribute :admin_first_name
    attribute :admin_last_name
    attribute :admin_password
    attribute :admin_time_zone
    attribute :accounting_currency
    attribute :accounts
    attribute :automated_exchange_rates
    attribute :created
    attribute :name
    attribute :time_zone

    # (docerror :undocumented)
    attribute :business_name
    attribute :created_timestamp
    attribute :web_site
  end
end
