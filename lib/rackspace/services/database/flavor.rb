class Rackspace::Database::Flavor < Peace::Model
  attr_accessor :id, :name, :ram, :links

  def flavors_for_datastore_version; end
end
