FactoryGirl.define do
  factory :domain, class: Rackspace::Dn::Domain do
    account_id ''
		comment ''
		created ''
		email_address ''
		id ''
		name ''
		nameservers ''
		records_list ''
		ttl ''
		updated ''
  end
end
