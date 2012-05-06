module Enstratus::Enumerations
  class LBProtocol < Enstratus::Enumeration
    value :ajp
    value :http
    value :https
    value :raw_tcp
  end
end
