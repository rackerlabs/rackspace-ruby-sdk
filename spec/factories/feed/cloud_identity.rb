FactoryGirl.define do
  factory :cloud_identity, class: Rackspace::Feed::CloudIdentity do
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
