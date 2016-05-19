class Rackspace::LoadBalancer::VirtualIp < Peace::Model
  attr_accessor :id, :address, :type, :ip_version
  attr_with_alias :ip_version, :ipVersion

  def list_protocols; end
  def list_algorithms; end
end
