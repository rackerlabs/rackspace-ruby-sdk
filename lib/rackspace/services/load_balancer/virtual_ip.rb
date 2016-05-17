class Rackspace::LoadBalancer::VirtualIp < Peace::Model
  attr_accessor :id, :address, :type, :ip_version
  attr_with_alias :ip_version, :ipVersion

  def list_protocols; end
  def list_algorithms; end
  def get_connection_logging; end
  def set_connection_logging; end
  def get_content_caching; end
  def set_content_caching; end
end
