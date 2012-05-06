module Enstratus::Enumerations
  class ManagementState < Enstratus::Enumeration
    value :unmanaged
    value :configuring
    value :initializing
    value :operational
    value :out_of_service
    value :stopping
    value :terminated
  end
end
