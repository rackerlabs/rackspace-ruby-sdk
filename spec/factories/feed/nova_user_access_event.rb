FactoryGirl.define do
  factory :nova_user_access_event, class: Rackspace::Feed::NovaUserAccessEvent do
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
