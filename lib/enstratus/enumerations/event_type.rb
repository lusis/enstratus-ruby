module Enstratus::Enumerations
  class EventType < Enstratus::Enumeration
    value :alarm_any, :sep => '.'
    value :alarm_ids, :sep => '.'
    value :state_any, :sep => '.'
    value :state_create, :sep => '.'
    value :state_delete, :sep => '.'
    value :state_update, :sep => '.'
  end
end
