FactoryGirl.define do
  factory :cloud_servers_open_stack, class: Rackspace::Feed::CloudServersOpenStack do
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
