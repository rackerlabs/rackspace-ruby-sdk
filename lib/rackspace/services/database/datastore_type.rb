class Rackspace::Database::DatastoreType < Peace::Model
	attr_accessor :default_version, :id, :links, :name, :versions
	
	def versions; end
end
