module Enstratus::Enumerations
  class ResourceType < Enstratus::Enumeration
    value :any
    value :console
    value :cluster
    value :distribution
    value :firewall
    value :image
    value :ip
    value :kvdb
    value :ip
    value :lb
    value :rdbms
    value :server
    value :snapshot
    value :topic
    value :volume
  end
end
