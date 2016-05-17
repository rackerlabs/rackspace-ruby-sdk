class Rackspace::Monitoring::Check < Peace::Model
  attr_accessor :id, :entity, :label, :metadata, :target_alias, :target_resolver,
    :target_hostname, :period, :timeout, :type, :details, :disabled,
    :monitoring_zones_poll
    
  def create_a_check; end
	def test_a_check; end
	def test_a_check_with_debug; end
	def test_an_existing_check; end
	def checks_an_entity; end
	def get_a_check_by_id; end
	def update_a_check_by_id; end
	def delete_a_check_by_id; end
end
