class Rackspace::Queue::Claim < Peace::Model
  attr_accessor :id, :grace, :ttl, :limit, :messages
  has_many :messages

	def release; end
end
