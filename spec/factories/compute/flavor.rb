FactoryGirl.define do
  factory :flavor, class: Rackspace::Compute::Flavor do
    id { SecureRandom.hex(25) }
		name ''
		links ''
		ram ''
		vcpus ''
		swap ''
		rxtx_factor ''
		disk ''
  end
end
