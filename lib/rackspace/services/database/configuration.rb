class Rackspace::Database::Configuration 
  include Peace::Model
	attr_accessor :created, :datastore_name, :datastore_version_id, :datastore_version_name, :description, :id, :instance_count, :name, :updated, :values
	
	def details; end
	def instances_configuration; end
end
