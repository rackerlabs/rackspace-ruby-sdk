class Rackspace::Storage::Container 
  include Peace::Model
	attr_accessor :bytes, :content_type, :hash, :last_modified, :name
	
	class << self
		def container_access_control_lists; end
		def container_quotas; end
		def access_log_delivery; end
	end

	def delete_metadata; end
	def details; end
	def metadata; end
	def set_metadata; end
	def toggle_cdn; end
end
