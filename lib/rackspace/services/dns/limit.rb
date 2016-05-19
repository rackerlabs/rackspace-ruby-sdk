class Rackspace::DNS::Limit < Peace::Model
	attr_accessor :absolute, :rates
	
	class << self
		def limit_types; end
	end
end
