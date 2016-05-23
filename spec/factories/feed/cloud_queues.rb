FactoryGirl.define do
  factory :cloud_queues, class: Rackspace::Feed::CloudQueue do
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
