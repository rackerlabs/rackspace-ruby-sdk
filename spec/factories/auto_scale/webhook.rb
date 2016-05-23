FactoryGirl.define do
  factory :webhook, class: Rackspace::AutoScale::Webhook do
    id { SecureRandom.hex(25) }
		group ''
		policy ''
		name ''
		metadta ''
		links ''
  end
end
