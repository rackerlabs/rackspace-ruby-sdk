class Rackspace::LoadBalancer 
  include Peace::Service

  has_resource :access_list
  has_resource :access_rule
  has_resource :algorithm
  has_resource :allowed_domain
  has_resource :certificate_mapping
  has_resource :content_caching
  has_resource :error_page
  has_resource :load_balancer
  has_resource :log_connection
  has_resource :metadatum
  has_resource :metadatum_item
  has_resource :monitor
  has_resource :node
  has_resource :protocol
  has_resource :session_persistence
  has_resource :ssl_termination
  has_resource :throttle_connection
  has_resource :usage_report
  has_resource :virtual_ip

  def initialize
  end

end
