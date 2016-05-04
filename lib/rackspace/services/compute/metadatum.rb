class Rackspace::Compute::Metadatum < Peace::Model
  attr_accessor :id, :value

  request :list_metadata
  request :set_metadata
  request :update_metadata
  request :get_metadata_item
  request :set_metadata_item
  request :delete_metadata_item

end
