class Rackspace::LoadBalancer::LoadBalancer < Peace::Model
  attr_accessor :id, :cluster, :connection_logging, :port, :protocol, :algorithm, :virtual_ips, :created, :updated, :name, :state, :timeout, :nodes, :https_redirect

  attr_with_alias :connection_logging, :connectionLogging
  attr_with_alias :virtual_ips, :virtualIps
  attr_with_alias :state, :connectionLogging
  attr_with_alias :https_redirect, :httpsRedirect

  class << self
    def bulk_delete; end
  end

  def get_ssl_termination; end
  def set_ssl_termination; end
  def remove_ssl_termination; end

  def get_session_persistence; end
  def set_session_persistence; end
  def remove_session_persistence; end

  def get_connection_throttling; end
  def remove_connection_throttling; end
  def set_connection_throttling; end

  def get_monitor; end
  def set_monitor; end
  def remove_monitor; end

  def get_usage; end
  def get_error_page; end
  def set_error_page; end
  def remove_error_page; end

  def get_stats; end
  def details; end
end
