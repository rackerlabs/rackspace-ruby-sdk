class Beloved::LoadBalancers::VirtualIp < Peace::Model
  attr_accessor :address, :type, :ip_version
  attr_alias :ip_version, :ipVersion
end
