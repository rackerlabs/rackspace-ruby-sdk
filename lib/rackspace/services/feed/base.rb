class Rackspace::Feed 
  include Peace::Service

  has_resource :cdn_feed
  has_resource :cloud_autoscale
  has_resource :cloud_backup
  has_resource :cloud_big_data
  has_resource :cloud_block_storage
  has_resource :cloud_database
  has_resource :cloud_files
  has_resource :cloud_identity
  has_resource :cloud_load_balancers
  has_resource :cloud_queues
  has_resource :cloud_servers
  has_resource :cloud_servers_open_stack
  has_resource :feeds_user_access_event
  has_resource :identity_user_access_event
  has_resource :nova_user_access_event
  has_resource :rackspace_monitoring

  def initialize
  end

end
