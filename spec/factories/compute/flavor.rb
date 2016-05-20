FactoryGirl.define do
  factory :compute_flavor, class: Rackspace::Compute::Flavor do
    id ''
		name ''
		links ''
		ram ''
		vcpus ''
		swap ''
		rxtx_factor ''
		disk ''
  end
end
