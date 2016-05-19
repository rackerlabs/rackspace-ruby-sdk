class Rackspace::Monitoring::Check < Peace::Model
  attr_accessor :id, :entity, :label, :metadata, :target_alias, :target_resolver, :target_hostname, :period, :timeout, :type, :details, :disabled, :monitoring_zones_poll

	def test; end
	def test_with_debug; end
end
