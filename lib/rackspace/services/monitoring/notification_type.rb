class Rackspace::Monitoring::NotificationType < Peace::Model
	class << self
		def email; end
		def webhook; end
		def pagerduty; end
		def sms; end
		def victorops; end
		def api_operations; end
	end
end
