FactoryGirl.define do
  factory :zone, class: Rackspace::DNS::Zone do
    id { SecureRandom.hex(25) }
		email ''
		domain ''
		created ''
		updated ''
		account_id { SecureRandom.hex(25) }
		ttl ''
  end
end
