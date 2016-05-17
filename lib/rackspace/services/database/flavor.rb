class Rackspace::Database::Flavor < Peace::Model
  attr_accessor :id, :name, :ram, :links
  
  def flavors; end
  def flavor_by_id; end
  def flavors_datastore_version; end
end
