module Enstratus::Enumerations
  class DeploymentState < Enstratus::Enumeration
    value :stopped
    value :launching
    value :maintenance
    value :running
    value :stopping
  end
end
