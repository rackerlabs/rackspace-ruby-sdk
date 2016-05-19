class Rackspace::Queue::Message < Peace::Model
  attr_accessor :id, :age, :ttl, :body, :href, :claim_id

  class << self
  	def bulk_delete; end
  end

	def details; end
end
