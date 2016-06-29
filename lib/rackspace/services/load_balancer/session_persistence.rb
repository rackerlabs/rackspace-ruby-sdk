class Rackspace::LoadBalancer::SessionPersistence 
  include Peace::Model
	attr_accessor :persistence_type

	def configuration; end
	def enable; end
	def disable; end # destroy
end
