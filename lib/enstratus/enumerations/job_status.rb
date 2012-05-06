module Enstratus::Enumerations
  class JobStatus < Enstratus::Enumeration
    value :running
    value :complete
    value :error
  end
end
