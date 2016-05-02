class Beloved::Queues::Claim < Peace::Model
  attr_accessor :grace, :ttl, :limit, :messages
end
