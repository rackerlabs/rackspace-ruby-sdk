class Rackspace::Queues:Queue < Peace::Model
  request :list_queues
  request :get_queue
  request :create_queue
  request :delete_queue
  request :get_queue_stats
end
