class Rackspace::Compute::Server < Peace::Model

  attr_accessor :id, :name, :created, :updated, :progress, :user_id, :tenant_id,
    :links, :personality, :config_drive, :user_data, :addresses,
    :boot_volume_id, :boot_volume_size, :boot_image_id, :key_name, :metadata

  attr_alias :bandwidth, 'rax-bandwidth:bandwidth'
  attr_alias :disk_config, 'OS-DCF:diskConfig'
  attr_alias :flavor_id, :flavorRef, :flavor
  attr_alias :host_id, :hostId
  attr_alias :image_id, :imageRef, :image
  attr_alias :ipv4_address, 'accessIPv4'
  attr_alias :ipv6_address, 'accessIPv6'
  attr_alias :password, :adminPass
  attr_alias :power_state, 'OS-EXT-STS:power_state'
  attr_alias :state_ext, 'OS-EXT-STS:task_state'
  attr_alias :state, :status
  attr_alias :vm_state, 'OS-EXT-STS:vm_state'
  attr_alias :zone_id, 'RAX-PUBLIC-IP-ZONE-ID:publicIPZoneId'

  has_many :volumes, {server_id: :id}

  action :change_server_password
  action :confirm_resize_server
  action :get_vnc_console
  action :reboot_server
  action :rebuild_server
  action :rescue_server
  action :resize_server
  action :revert_resize_server
  action :unrescue_server

end
