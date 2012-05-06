module Enstratus::Admin
  class Acl < Enstratus::Resource

    attribute :action
    attribute :qualifier
    attribute :resource_type
  end
end
