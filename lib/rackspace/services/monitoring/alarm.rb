class Rackspace::Monitoring::Alarm 
  include Peace::Model
  attr_accessor :id, :entity, :check, :disabled, :label, :criteria, :check_type,
    :notification_plan_id
  attr_with_alias :entity, :entity_id
  attr_with_alias :check, :check_id

  def attributes; end
  def test; end
end
