module Enstratus::Enumerations
  class Action < Enstratus::Enumeration
    scope :global do
      value :any, :as => 'ANY' 
    end

    scope :deployment do
      value :configure
      value :create
      value :delete
      value :launch
      value :manage_ssl
      value :manage_users
      value :pause
      value :resize
      value :upload_images
    end

    scope :console do
      value :access
      value :create_api_keys
      value :edit_account
      value :edit_billing
      value :manage_users
      value :view_invoices
      value :view_billing
    end

    scope :distribution do
      value :access
      value :configure
      value :create
      value :delete
    end

    scope :firewall do
      value :configure
      value :create
      value :delete
      value :edit_rule
      value :add_rule
    end

    scope :image do
      value :delete
      value :define_service
      value :define_server_from_public
      value :configure
      value :share_local
      value :share_public
    end

    scope :ip do
      value :assign
      value :configure
      value :create
      value :delete
      value :forward
      value :release
      value :stop_forward
    end

    scope :load_balancer do
      value :add_data_center
      value :add_listener
      value :add_server
      value :configure
      value :create
      value :delete
      value :edit_listener
      value :remove_data_center
      value :remove_server
    end

    scope :kvdb do
      value :configure
      value :create
      value :terminate
    end

    scope :rdbms do
      value :configure
      value :manage_network
      value :snapshot
      value :terminate
      value :change_password
    end

    scope :server do
      value :configure
      value :image
      value :manage_users
      value :pause
      value :prepay
      value :start
      value :template
    end
    
    scope :snapshot do
      value :create_volume
      value :delete
      value :share_local
      value :share_public
    end

    scope :topic do
      value :create
      value :publish
      value :subscribe
      value :remove
    end

    scope :volume do
      value :attach
      value :configure
      value :create
      value :detach
      value :snapshot
    end

  end
end
