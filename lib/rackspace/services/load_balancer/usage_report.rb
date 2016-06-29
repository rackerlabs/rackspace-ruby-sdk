class Rackspace::LoadBalancer::UsageReport 
  include Peace::Model
	attr_accessor :id, :average_num_connections, :incoming_transfer, :outgoing_transfer, :average_num_connections_ssl, :incoming_transfer_ssl, :outgoing_transfer_ssl, :num_vips, :num_polls, :start_time, :end_time, :vip_type, :ssl_mode, :event_type

	class << self
		def historical_usage; end
		def account_level_usage; end
		def current_usage; end
		def billable_load_balancers; end
	end
end
