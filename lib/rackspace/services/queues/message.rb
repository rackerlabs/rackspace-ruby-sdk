class Rackspace::Queues::Message < Peace::Model
  attr_accessor :id, :age, :ttl, :body, :href, :claim_id

  request :list_messages
  request :get_message
  request :create_message
  request :delete_message
end
