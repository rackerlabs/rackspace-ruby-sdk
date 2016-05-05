class Rackspace::Compute::Flavor < Peace::Model
  include Peace::Details

  attr_accessor :id, :name, :links, :ram, :vcpus, :swap, :rxtx_factor, :disk
  attr_with_alias :extra_specs, 'OS-FLV-WITH-EXT-SPECS:extra_specs'
  attr_with_alias :ephemeral, 'OS-FLV-EXT-DATA:ephemeral'

  validates :name, :links, presence: true

end
