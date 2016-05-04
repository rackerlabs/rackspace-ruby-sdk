class Rackspace::LoadBalancers::Node < Peace::Model
  attr_accessor :id, :address, :status, :weight, :port, :type, :condition
end
