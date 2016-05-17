class Rackspace::BlockStorage::Volume < Peace::Model
  attr_accessor :id, :created_at, :state, :display_name, :display_description, :size,
    :attachments, :volume_type, :availability_zone, :image_id

    def create_volume; end
  	def volumes; end
  	def volumes_detailed; end
  	def show_volume; end
  	def update_volume; end
  	def delete_volume; end
end
