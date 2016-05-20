class Rackspace::Queue::Message < Peace::Model
  attr_accessor :id, :age, :ttl, :body, :href, :claim_id
  belongs_to :claim

  class << self
  	def bulk_delete; end
  end

	def details; end
end
