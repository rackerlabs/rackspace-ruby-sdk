class Rackspace::Compute::Network < Peace::Model
  attr_accessor :id, :label, :cidr

  class << self
    def create_server_with_network; end
    def create_virtual_interface_and_attach_to_server; end
  end

  def addresses; end
end
