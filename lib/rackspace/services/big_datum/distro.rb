class Rackspace::BigDatum::Distro < Peace::Model
	attr_accessor :id, :links, :name, :services, :version
	
	class << self
		def available_distros; end
	end

	def details; end
end
