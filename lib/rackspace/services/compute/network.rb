class Rackspace::Compute::Network < Peace::Model
  attr_accessor :id, :label, :cidr

  def list_addresses_by_network; end
  def networks; end
  def create_network; end
  def create_server_with_network; end
  def show_network; end
  def delete_network; end
  def virtual_interfaces; end
  def create_virtual_interface_and_attach_to_server; end
  def delete_virtual_interface; end
end
