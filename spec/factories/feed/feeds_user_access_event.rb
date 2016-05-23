FactoryGirl.define do
  factory :feeds_user_access_event, class: Rackspace::Feed::FeedsUserAccessEvent do
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
