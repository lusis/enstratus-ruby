module Enstratus::Enumerations
  class AccountStatus < Enstratus::Enumeration
    value :active
    value :archived
    value :cancelled
    value :expired
    value :permanent
    value :suspended
    value :terminated
    value :trial
  end
end
