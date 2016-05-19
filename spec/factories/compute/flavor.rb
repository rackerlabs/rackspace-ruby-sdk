FactoryGirl.define do
  factory :flavor, class: Rackspace::Compute::Flavor do
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
