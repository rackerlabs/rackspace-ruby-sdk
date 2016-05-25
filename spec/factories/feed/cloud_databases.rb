FactoryGirl.define do
  factory :cloud_database, class: Rackspace::Feed::CloudDatabase do
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
