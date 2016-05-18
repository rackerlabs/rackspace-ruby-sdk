class Rackspace::Compute::Flavor < Peace::Model
  attr_accessor :id, :name, :links, :ram, :vcpus, :swap, :rxtx_factor, :disk
  attr_with_alias :extra_specs, 'OS-FLV-WITH-EXT-SPECS:extra_specs'
  attr_with_alias :ephemeral, 'OS-FLV-EXT-DATA:ephemeral'

  validates :name, :links, presence: true

  class << self
  	def flavors_with_details; end
  end

	def details; end
	def show_flavor_with_extra_specs; end
	def extra_specs_flavors; end
	def get_details_flavor_extra_spec; end
end
