class Beloved::LoadBalancers::VirtualIp < Peace::Model
  attr_accessor :id, :address, :type, :ip_version
  attr_alias :ip_version, :ipVersion

  request :create_virtual_ip
  request :list_virtual_ips
  request :delete_virtual_ip
  request :list_protocols
  request :list_algorithms
  request :get_connection_logging
  request :set_connection_logging
  request :get_content_caching
  request :set_content_caching
end
