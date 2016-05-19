FactoryGirl.define do
  factory :reverse_dns, class: Rackspace::Dn::ReverseDn do
    records_list ''
		link ''
  end
end
