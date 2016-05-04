class Rackspace::Compute::Metadatum < Peace::Model
  attr_accessor :id, :value

  action :set_metadata
  action :set_metadata_item
end
