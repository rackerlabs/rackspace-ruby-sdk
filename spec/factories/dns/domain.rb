FactoryGirl.define do
  factory :domain, class: Rackspace::DNS::Domain do
    account_id { SecureRandom.hex(25) }
		comment ''
		created ''
		email_address ''
		id { SecureRandom.hex(25) }
		name ''
		nameservers ''
		records_list ''
		ttl ''
		updated ''
  end
end
