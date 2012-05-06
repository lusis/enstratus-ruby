module Enstratus::Admin
  class BillingCode < Enstratus::Resource
    collects_as :billingCodes

    attribute :billing_code_id
    attribute :status

    # elements
    attribute :budget_state
    attribute :customer
    attribute :current_usage
    attribute :description
    attribute :finance_code
    attribute :hard_quota
    attribute :name
    attribute :projected_usage
    attribute :soft_quota


  end
end
