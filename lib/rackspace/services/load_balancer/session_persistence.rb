class Rackspace::LoadBalancer::SessionPersistence < Peace::Model
	attr_accessor :persistence_type

	def configuration; end
	def enable; end
	def disable; end # destroy
end
