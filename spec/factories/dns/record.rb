FactoryGirl.define do
  factory :record, class: Rackspace::DNS::Record do
    id { SecureRandom.hex(25) }
		name ''
		value ''
		ttl ''
		type ''
		priority ''
		created ''
		updated ''
  end
end
