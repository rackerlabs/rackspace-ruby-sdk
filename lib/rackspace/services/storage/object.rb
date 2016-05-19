class Rackspace::Storage::Object < Peace::Model
	attr_accessor :content

	class << self
		def chunked_transfer_encoding; end
		def creating_large_objects; end
		def creating_a_dynamic_large_object; end
		def creating_a_static_large_object; end
		def enabling_file_compression; end
		def enabling_bypass_browser_behavior; end
		def expiring_objects; end
		def object_versioning; end
		def account_to_account_copy; end
	end

	def metadata; end
	def copy; end
	def set_metadata; end
end
