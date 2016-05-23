FactoryGirl.define do
  factory :message, class: Rackspace::Queue::Message do
    id { SecureRandom.hex(25) }
		age ''
		ttl ''
		body ''
		href ''
		claim_id { SecureRandom.hex(25) }
  end
end
