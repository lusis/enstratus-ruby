module Enstratus::Network
  class FirewallRule < Enstratus::Resource
    collects_as :rules

    attribute :cidr
    attribute :direction
    attribute :end_port
    attribute :firewall_id
    attribute :firewall_rule_id
    attribute :protocol
    attribute :start_port

    # (docerror :undocumented)
    attribute :firewall
    attribute :network_address
  end
end
