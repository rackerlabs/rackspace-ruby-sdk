FactoryGirl.define do
  factory :network, class: Rackspace::Compute::Network do
    id ''
		label ''
		cidr ''
  end
end
