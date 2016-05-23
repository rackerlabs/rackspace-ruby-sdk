FactoryGirl.define do
  factory :cloud_autoscale, class: Rackspace::Feed::CloudAutoscale do
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
