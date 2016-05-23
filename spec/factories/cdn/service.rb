FactoryGirl.define do
  factory :service, class: Rackspace::CDN::Service do
    id { SecureRandom.hex(25) }
		name ''
		domains ''
		origins ''
		caching ''
		restrictions ''
		flavor_id { SecureRandom.hex(25) }
		status ''
		links ''
  end
end
