class Rackspace::Compute::Server < Peace::Model

  attr_accessor :id, :name, :created, :updated, :host_id, :state, :state_ext,
    :progress, :user_id, :tenant_id, :links, :personality, :ipv4_address,
    :ipv6_address, :disk_config, :config_drive, :user_data, :bandwidth,
    :addresses, :flavor_id, :image_id, :boot_volume_id, :boot_volume_size,
    :boot_image_id, :password, :key_name, :metadata

  attr_alias :state_ext, 'OS-EXT-STS:task_state'
  attr_alias :ipv4_address, 'accessIPv4'
  attr_alias :ipv6_address, 'accessIPv6'
  attr_alias :flavor_id, :flavorRef, :flavor
  attr_alias :image_id, :imageRef, :image
  attr_alias :host_id, :hostId
  attr_alias :password, :adminPass
  attr_alias :disk_config, 'OS-DCF:diskConfig'
  attr_alias :bandwidth, 'rax-bandwidth:bandwidth'
  attr_alias :state, :status

  has_many :volumes, {server_id: :id}

  request :list_servers
  request :get_server
  request :create_server
  request :update_server
  request :delete_server
  request :change_server_password
  request :reboot_server
  request :rebuild_server
  request :resize_server
  request :confirm_resize_server
  request :revert_resize_server
  request :rescue_server
  request :unrescue_server
  request :get_vnc_console

end
