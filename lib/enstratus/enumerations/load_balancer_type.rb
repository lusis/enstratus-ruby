module Enstratus::Enumerations
  class LoadBalancerType < Enstratus::Enumeration
    value :cloud
    value :vm_dynamic
    value :vm_static
  end
end
