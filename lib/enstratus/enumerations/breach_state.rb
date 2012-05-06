module Enstratus::Enumerations
  class BreachState < Enstratus::Enumeration
    value :normal
    value :breach_upper
    value :breach_lower
    value :cooldown
    value :scaling
  end
end
