FactoryGirl.define do
  factory :cloud_big_data, class: Rackspace::Feed::CloudBigDatum do
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
