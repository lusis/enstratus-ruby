module Enstratus::Enumerations
  class ServerState < Enstratus::Enumeration
    value :pending
    value :running
    value :paused
    value :rebooting
    value :stopping
    value :terminated
  end
end
