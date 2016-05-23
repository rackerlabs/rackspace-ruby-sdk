FactoryGirl.define do
  factory :claim, class: Rackspace::Queue::Claim do
    id { SecureRandom.hex(25) }
		grace ''
		ttl ''
		limit ''
		messages ''
  end
end
