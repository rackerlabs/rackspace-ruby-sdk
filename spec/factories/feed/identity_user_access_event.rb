FactoryGirl.define do
  factory :identity_user_access_event, class: Rackspace::Feed::IdentityUserAccessEvent do
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
