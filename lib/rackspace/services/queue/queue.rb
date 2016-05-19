class Rackspace::Queue::Queue < Peace::Model
	attr_accessor :href, :name
	
	def check_existence; end
	def set_metadata; end
	def metadata; end
	def stats; end
end
