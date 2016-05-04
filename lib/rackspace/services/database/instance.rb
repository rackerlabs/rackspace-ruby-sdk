class Rackspace::Database::Instance < Peace::Model
  attr_accessor :id, :name, :created, :updated, :state, :hostname, :links,
    :flavor_id, :volume_size

  action :check_root_user
  action :enable_root_user
  action :restart_instance
  action :resize_instance
  action :resize_instance_volume
end
