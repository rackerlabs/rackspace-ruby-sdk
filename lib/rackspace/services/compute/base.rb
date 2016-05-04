class Rackspace::Compute < Peace::Service

  has_resource :attachment
  has_resource :flavor
  has_resource :image
  has_resource :images
  has_resource :key_pair
  has_resource :metadatum
  has_resource :network
  has_resource :server
  has_resource :server
  has_resource :virtual_interface
  has_resource :volume

  def initialize
  end

end
