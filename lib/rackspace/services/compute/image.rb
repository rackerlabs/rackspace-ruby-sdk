class Rackspace::Compute::Image < Peace::Model
  attr_accessor :id, :name, :created, :updated, :state, :user_id, :tenant_id,
    :progress, :minDisk, :minRam, :disk_config, :links

  attr_with_alias :disk_config, 'OS-DCF:diskConfig'

  class << self
  	def images_with_details; end
  end

	def details; end
	def image_metadata_image; end
	def set_image_metadata_image; end
	def image_metadata_item_image; end
	def set_image_metadata_item_image; end
	def delete_image_metadata_item_image; end
	def enable_scheduled_images; end
	def disable_scheduled_images; end
	def scheduled_images; end
end
