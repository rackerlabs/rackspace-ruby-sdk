FactoryGirl.define do
  factory :rackspace_monitoring, class: Rackspace::Feed::RackspaceMonitoring do
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
