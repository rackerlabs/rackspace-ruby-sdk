FactoryGirl.define do
  factory :image_image, class: Rackspace::Image::Image do
    auto_disk_config ''
		cache_in_nova ''
		checksum ''
		container_format ''
		created_at ''
		disk_format ''
		file ''
		flavor_classes ''
		id { SecureRandom.hex(25) }
		image_type ''
		min_disk ''
		min_ram ''
		name ''
		os_distro ''
		os_type ''
		owner ''
		protected ''
		schema ''
		size ''
		status ''
		tags ''
		updated_at ''
		visibility ''
		vm_mode ''
  end
end
