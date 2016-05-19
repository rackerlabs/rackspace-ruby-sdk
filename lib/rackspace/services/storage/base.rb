class Rackspace::Storage < Peace::Service

  has_resource :account
  has_resource :container
  has_resource :object
  has_resource :file

	class << self
		def purge_cdn_enabled_containers; end
		def cdn_enabled_containers_served_through_ssl; end
		def streaming_cdn_enabled_containers; end
		def ios_streaming; end
		def cdn_log_delivery; end
	end

  def initialize
  end

end
