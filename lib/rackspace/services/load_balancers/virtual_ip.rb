class Rackspace::LoadBalancers::VirtualIp < Peace::Model
  attr_accessor :id, :address, :type, :ip_version
  attr_with_alias :ip_version, :ipVersion

  action :list_protocols
  action :list_algorithms
  action :get_connection_logging
  action :set_connection_logging
  action :get_content_caching
  action :set_content_caching
end
