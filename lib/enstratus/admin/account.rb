module Enstratus::Admin
  class Account < Enstratus::Resource
    attribute :account_id
    attribute :default_budget
    attribute :status

    # Convert to element
    attribute :alert_configuration
    attribute :billing_address
    attribute :billing_credit_card
    attribute :billing_email
    attribute :billing_phone
    attribute :billing_system_id
    attribute :cloud_subscription
    attribute :configured
    attribute :customer
    attribute :dns_automation
    attribute :name
    attribute :owner_id
    attribute :plan_id
    attribute :provisioned
    attribute :storage
    attribute :subscribed

    # docerror :not_documented
    attribute :cloud_subscription_id
    attribute :owner

  end
end
