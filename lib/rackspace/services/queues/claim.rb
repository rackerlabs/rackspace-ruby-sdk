class Rackspace::Queues::Claim < Peace::Model
  attr_accessor :id, :grace, :ttl, :limit, :messages
end
