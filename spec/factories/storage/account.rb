FactoryGirl.define do
  factory :account, class: Rackspace::Storage::Account do
    cdn_enabled ''
		cdn_ios_uri ''
		cdn_ssl_uri ''
		cdn_streaming_uri ''
		cdn_uri ''
		log_retention ''
		name ''
		ttl ''
  end
end
