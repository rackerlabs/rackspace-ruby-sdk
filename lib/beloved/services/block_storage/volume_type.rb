class Beloved::BlockStorage::VolumeType < Peace::Model
  attr_accessor :id, :name, :extra_specs

  request :get_volume_type
  request :list_volume_types

end
