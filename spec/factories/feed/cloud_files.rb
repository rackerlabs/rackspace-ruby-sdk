FactoryGirl.define do
  factory :cloud_files, class: Rackspace::Feed::CloudFile do
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
