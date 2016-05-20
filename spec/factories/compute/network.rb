FactoryGirl.define do
  factory :compute_network, class: Rackspace::Compute::Network do
    id ''
		label ''
		cidr ''
  end
end
