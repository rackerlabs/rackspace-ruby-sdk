FactoryGirl.define do
  factory :cloud_servers, class: Rackspace::Feed::CloudServer do
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
