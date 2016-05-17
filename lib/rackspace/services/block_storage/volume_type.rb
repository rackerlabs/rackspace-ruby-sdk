class Rackspace::BlockStorage::VolumeType < Peace::Model
  attr_accessor :id, :name, :extra_specs

  def volume_types; end
	def show_volume_type_details; end
end
