class Rackspace::LoadBalancer::Node 
  include Peace::Model
  attr_accessor :id, :address, :status, :weight, :port, :type, :condition

  class << self
    def bulk_delete; end
  end
  
  def details; end
  def service_events; end
end
