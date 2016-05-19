FactoryGirl.define do
  factory :claim, class: Rackspace::Queue::Claim do
    id ''
		grace ''
		ttl ''
		limit ''
		messages ''
  end
end
