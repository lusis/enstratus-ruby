module Enstratus::Admin
  class Job < Enstratus::Resource
    
    attribute :job_id
    attribute :status

    # elements
    attribute :description
    attribute :end_date
    attribute :message

    # (docerror :undocumented)
    attribute :start_date

  end
end
