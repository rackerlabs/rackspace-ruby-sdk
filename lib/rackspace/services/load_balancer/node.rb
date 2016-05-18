class Rackspace::LoadBalancer::Node < Peace::Model
  attr_accessor :id, :address, :status, :weight, :port, :type, :condition
  
  def nodes; end
  def add_node; end
  def bulk_delete_nodes; end
  def show_node_details; end
  def update_node; end
  def delete_node; end
  def node_service_events; end
end
