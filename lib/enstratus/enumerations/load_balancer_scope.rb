module Enstratus::Enumerations
  class LoadBalancerScope < Enstratus::Enumeration
    value :global
    value :region
    value :data_center
  end
end
