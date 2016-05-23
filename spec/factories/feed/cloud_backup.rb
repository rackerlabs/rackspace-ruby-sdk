FactoryGirl.define do
  factory :cloud_backup, class: Rackspace::Feed::CloudBackup do
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
