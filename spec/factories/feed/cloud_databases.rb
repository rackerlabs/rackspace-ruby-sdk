FactoryGirl.define do
  factory :cloud_databases, class: Rackspace::Feed::CloudDatabases do
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
