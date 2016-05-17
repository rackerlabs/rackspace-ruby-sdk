class Rackspace::LoadBalancer < Peace::Service

  has_resource :access_rule
  has_resource :load_balancer
  has_resource :node
  has_resource :virtual_ip

  def initialize
  end

end
