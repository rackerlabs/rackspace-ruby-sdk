class Rackspace::Image::Task 
  include Peace::Model
	attr_accessor :created_at, :id, :input, :message, :owner, :schema, :self, :status, :type, :updated_at
	
	def details; end
	def import_image; end
	def export_image; end
end
