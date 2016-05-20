FactoryGirl.define do
  factory :subdomain, class: Rackspace::DNS::Subdomain do
    domains ''
		total_entries ''
  end
end
