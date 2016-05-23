FactoryGirl.define do
  factory :cloud_load_balancers, class: Rackspace::Feed::CloudLoadBalancer do
    type ''
		category ''
		content ''
		id { SecureRandom.hex(25) }
		link ''
		published ''
		title ''
		updated ''
  end
end
