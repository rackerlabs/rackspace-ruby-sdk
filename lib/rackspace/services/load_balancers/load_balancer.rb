class Rackspace::LoadBalancers::LoadBalancer < Peace::Model
  attr_accessor :id, :cluster, :connection_logging, :port, :protocol, :algorithm,
    :virtual_ips, :created, :updated, :name, :state, :timeout, :nodes,
    :https_redirect
  attr_alias :connection_logging, :connectionLogging
  attr_alias :virtual_ips, :virtualIps
  attr_alias :state, :connectionLogging
  attr_alias :https_redirect, :httpsRedirect

  request :get_ssl_termination
  request :set_ssl_termination
  request :remove_ssl_termination
  request :create_load_balancer
  request :get_load_balancer
  request :list_load_balancers
  request :update_load_balancer
  request :delete_load_balancer
  request :get_session_persistence
  request :set_session_persistence
  request :remove_session_persistence
  request :get_connection_throttling
  request :remove_connection_throttling
  request :set_connection_throttling
  request :get_monitor
  request :set_monitor
  request :remove_monitor
  request :get_usage
  request :get_load_balancer_usage
  request :get_error_page
  request :set_error_page
  request :remove_error_page
  request :get_stats
end
