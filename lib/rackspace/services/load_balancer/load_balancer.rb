class Rackspace::LoadBalancer::LoadBalancer < Peace::Model
  attr_accessor :id, :cluster, :connection_logging, :port, :protocol, :algorithm, :virtual_ips, :created, :updated, :name, :state, :timeout, :nodes, :https_redirect

  attr_with_alias :connection_logging, :connectionLogging
  attr_with_alias :virtual_ips, :virtualIps
  attr_with_alias :state, :connectionLogging
  attr_with_alias :https_redirect, :httpsRedirect

  class << self
    def bulk_delete; end
  end

  def ssl_termination; end
  def set_ssl_termination; end
  def destroy_ssl_termination; end

  def session_persistence; end
  def set_session_persistence; end
  def destroy_session_persistence; end

  def connection_throttling; end
  def destroy_connection_throttling; end
  def set_connection_throttling; end

  def monitor; end
  def set_monitor; end
  def destroy_monitor; end

  def usage; end
  def error_page; end
  def set_error_page; end
  def destroy_error_page; end

  def stats; end
  def details; end
end
