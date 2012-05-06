module Enstratus::Enumerations
  class BackupStatus < Enstratus::Enumeration
    value :running
    value :complete
    value :error
  end
end
