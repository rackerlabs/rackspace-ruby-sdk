FactoryGirl.define do
  factory :cloud_block_storage, class: Rackspace::Feed::CloudBlockStorage do
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
