class Rackspace::BlockStorage::Volume 
  include Peace::Model
  attr_accessor :id, :created_at, :state, :display_name, :display_description, :size, :attachments, :volume_type, :availability_zone, :image_id

  belongs_to :image
  has_many :volume_transfers

  class << self
  	def volumes_detailed; end
  end
end
