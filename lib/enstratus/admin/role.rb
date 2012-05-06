module Enstratus::Admin
  class Role < Enstratus::Resource

    attribute :role_id
    attribute :status

    # elements
    attribute :acl
    attribute :customer
    attribute :description
    attribute :name
  end
end
