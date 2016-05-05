class Peace::Service
  include Peace::HasResources

  def self.service_name
    service_name = self.to_s.demodulize.tableize.singularize
    service_name = "dns" if service_name == "dn"
    service_name = "load_balancers" if service_name == "load_balancer"
    service_name = "queues" if service_name == "queue"
    service_name.to_sym
  end
end
