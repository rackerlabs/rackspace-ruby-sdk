class Beloved::Compute::Image < Peace::Model

  attr_accessor :id, :name, :created, :updated, :state, :user_id, :tenant_id,
    :progress, :minDisk, :minRam, :disk_config, :links
  attr_alias :disk_config, 'OS-DCF:diskConfig'

  request :create_image
  request :list_images
  request :list_images_detail
  request :get_image
  request :delete_image

end
