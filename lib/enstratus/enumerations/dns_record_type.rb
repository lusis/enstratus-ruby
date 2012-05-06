module Enstratus::Enumerations
  class DnsRecordType < Enstratus::Enumeration
    value :a
    value :aaaa
    value :cname
    value :mx
    value :ns
    value :ptr
    value :soa
    value :spf
    value :srv
    value :txt
  end
end
