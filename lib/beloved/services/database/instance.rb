class Beloved::Database::Instance < Peace::Model
  attr_accessor :id, :name, :created, :updated, :state, :hostname, :links,
    :flavor_id, :volume_size

  request :list_instances
  request :get_instance
  request :create_instance
  request :delete_instance
  request :check_root_user
  request :enable_root_user
  request :restart_instance
  request :resize_instance
  request :resize_instance_volume
end
