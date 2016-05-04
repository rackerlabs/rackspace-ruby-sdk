class Beloved::BlockStorage::Volume < Peace::Model
  attr_accessor :id, :created_at, :state, :display_name, :display_description, :size,
    :attachments, :volume_type, :availability_zone, :image_id

  request :create_volume
  request :delete_volume
  request :get_volume
  request :list_volumes

end
