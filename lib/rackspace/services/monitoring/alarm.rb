class Rackspace::Monitoring::Alarm < Peace::Model
  attr_accessor :id, :entity, :check, :disabled, :label, :criteria, :check_type,
    :notification_plan_id
  attr_with_alias :entity, :entity_id
  attr_with_alias :check, :check_id

  def attributes; end
  def create_an_alarm; end
  def test_an_alarm; end
  def alarms; end
  def get_alarm_by_id; end
  def update_alarm_by_id; end
  def delete_alarm_by_id; end
end
