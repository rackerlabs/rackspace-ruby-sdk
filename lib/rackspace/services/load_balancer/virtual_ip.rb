class Rackspace::LoadBalancer::VirtualIp 
  include Peace::Model
  attr_accessor :id, :address, :type, :ip_version
  attr_with_alias :ip_version, :ipVersion

  def protocols; end
  def algorithms; end
end
