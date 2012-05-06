module Enstratus::Admin
  class User < Enstratus::Resource

    attribute :user_id
    attribute :status

    # elements
    attribute :account_user_id
    attribute :alpha_name
    attribute :billing_codes
    attribute :cloud_api_public_key
    attribute :cloud_api_secret_key
    attribute :cloud_console_password
    attribute :customer
    attribute :editable
    attribute :email
    attribute :family_name
    attribute :given_name
    attribute :has_cloud_ap_iaccess
    attribute :groups
    attribute :notification_settings
    attribute :notification_targets
    attribute :ssh_public_key
    attribute :time_zone
    attribute :vm_login_id

    # (docerror :undocumented)
    attribute :has_cloud_console_access
  end
end
