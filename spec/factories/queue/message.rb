FactoryGirl.define do
  factory :message, class: Rackspace::Queue::Message do
    id ''
		age ''
		ttl ''
		body ''
		href ''
		claim_id ''
  end
end
