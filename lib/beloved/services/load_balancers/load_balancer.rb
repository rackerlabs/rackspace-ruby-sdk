class Beloved::LoadBalancers::LoadBalancer < Peace::Model
  attr_accessor :cluster, :connection_logging, :port, :protocol, :algorithm,
    :virtual_ips, :created, :updated, :name, :state, :timeout, :nodes,
    :https_redirect
  attr_alias :connection_logging, :connectionLogging
  attr_alias :virtual_ips, :virtualIps
  attr_alias :state, :connectionLogging
  attr_alias :https_redirect, :httpsRedirect
end
