class Beloved::Monitoring::Alarm < Peace::Model
  attr_accessor :id, :entity, :check, :disabled, :label, :criteria, :check_type,
    :notification_plan_id
  attr_alias :entity, :entity_id
  attr_alias :check, :check_id
end
