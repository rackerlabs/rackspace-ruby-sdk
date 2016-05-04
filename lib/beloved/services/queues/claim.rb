class Beloved::Queues::Claim < Peace::Model
  attr_accessor :id, :grace, :ttl, :limit, :messages
  
  request :create_claim
  request :get_claim
  request :update_claim
  request :delete_claim
end
