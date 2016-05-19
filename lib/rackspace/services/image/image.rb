class Rackspace::Image::Image < Peace::Model
	attr_accessor :auto_disk_config, :cache_in_nova, :checksum, :container_format, :created_at, :disk_format, :file, :flavor_classes, :id, :image_type, :min_disk, :min_ram, :name, :os_distro, :os_type, :owner, :protected, :schema, :self, :size, :status, :tags, :updated_at, :visibility, :vm_mode
	
	def details; end
end
