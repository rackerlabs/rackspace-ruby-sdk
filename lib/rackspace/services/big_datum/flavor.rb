class Rackspace::BigDatum::Flavor < Peace::Model
	attr_accessor :class, :disk, :id, :name, :ram, :vcpus
	
	class << self
		def available_flavors; end
	end

	def resource_limits; end
end
