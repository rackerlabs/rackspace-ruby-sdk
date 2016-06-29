class Rackspace::Monitoring::Changelog 
  include Peace::Model
	attr_accessor :values, :metadata

	class << self
		def find_by_entity_id; end
	end
end
