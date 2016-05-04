class Beloved::LoadBalancers::Node < Peace::Model
  attr_accessor :id, :address, :status, :weight, :port, :type, :condition

  request :create_node
  request :list_nodes
  request :get_node
  request :update_node
  request :delete_node
  request :delete_nodes
  
end
