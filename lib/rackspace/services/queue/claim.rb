class Rackspace::Queue::Claim < Peace::Model
  attr_accessor :id, :grace, :ttl, :limit, :messages

	def release; end
end
