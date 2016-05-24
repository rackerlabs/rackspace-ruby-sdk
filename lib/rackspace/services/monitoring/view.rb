class Rackspace::Monitoring::View < Peace::Model
	attr_accessor :entity, :checks, :alarms, :latest_alarm_states
	
	class << self
		def get_overview_entity_checks_alarms_and_alarm_states; end
	end
end
