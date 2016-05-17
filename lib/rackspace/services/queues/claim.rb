class Rackspace::Queues::Claim < Peace::Model
  attr_accessor :id, :grace, :ttl, :limit, :messages
  
  def claim_messages; end
	def query_claim; end
	def update_claim; end
	def release_claim; end
end
