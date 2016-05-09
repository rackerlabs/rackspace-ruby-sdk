class Rackspace::Compute::Server < Peace::Model

  attr_accessor :id, :name, :created, :updated, :progress, :user_id, :tenant_id,
    :links, :personality, :config_drive, :user_data, :addresses,
    :boot_volume_id, :boot_volume_size, :boot_image_id, :key_name, :metadata

  attr_with_alias :bandwidth, 'rax-bandwidth:bandwidth'
  attr_with_alias :disk_config, 'OS-DCF:diskConfig'
  attr_with_alias :flavor_id, :flavorRef, :flavor
  attr_with_alias :host_id, :hostId
  attr_with_alias :image_id, :imageRef, :image
  attr_with_alias :ipv4_address, 'accessIPv4'
  attr_with_alias :ipv6_address, 'accessIPv6'
  attr_with_alias :password, :adminPass
  attr_with_alias :power_state, 'OS-EXT-STS:power_state'
  attr_with_alias :state_ext, 'OS-EXT-STS:task_state'
  attr_with_alias :state, :status
  attr_with_alias :vm_state, 'OS-EXT-STS:vm_state'
  attr_with_alias :zone_id, 'RAX-PUBLIC-IP-ZONE-ID:publicIPZoneId'

  has_many :volumes

  def change_password; end
  def confirm_resize; end
  def get_vnc_console; end
  def reboot; end
  def rebuild; end
  def rescue; end
  def resize; end
  def revert_resize; end
  def unrescue; end

end
