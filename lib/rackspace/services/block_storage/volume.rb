class Rackspace::BlockStorage::Volume < Peace::Model
  attr_accessor :id, :created_at, :state, :display_name, :display_description, :size,
    :attachments, :volume_type, :availability_zone, :image_id

end