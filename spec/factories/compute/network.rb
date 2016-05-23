FactoryGirl.define do
  factory :compute_network, class: Rackspace::Compute::Network do
    id { SecureRandom.hex(25) }
		label ''
		cidr ''
  end
end
