FactoryGirl.define do
  factory :reverse_dns, class: Rackspace::DNS::ReverseDNS do
    records_list ''
		link ''
  end
end
