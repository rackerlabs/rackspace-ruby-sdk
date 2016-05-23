FactoryGirl.define do
  factory :cdn_feed, class: Rackspace::Feed::CdnFeed do
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
