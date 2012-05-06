module Enstratus::Admin
  class Group < Enstratus::Resource

    attribute :group_id
    attribute :status

    # elements
    attribute :customer
    attribute :description
    attribute :name
  end
end
