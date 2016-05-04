class Rackspace::LoadBalancers::LoadBalancer < Peace::Model
  attr_accessor :id, :cluster, :connection_logging, :port, :protocol, :algorithm,
    :virtual_ips, :created, :updated, :name, :state, :timeout, :nodes,
    :https_redirect
  attr_alias :connection_logging, :connectionLogging
  attr_alias :virtual_ips, :virtualIps
  attr_alias :state, :connectionLogging
  attr_alias :https_redirect, :httpsRedirect

  action :get_ssl_termination
  action :set_ssl_termination
  action :remove_ssl_termination
  action :get_session_persistence
  action :set_session_persistence
  action :remove_session_persistence
  action :get_connection_throttling
  action :remove_connection_throttling
  action :set_connection_throttling
  action :get_monitor
  action :set_monitor
  action :remove_monitor
  action :get_usage
  action :get_load_balancer_usage
  action :get_error_page
  action :set_error_page
  action :remove_error_page
  action :get_stats
end
