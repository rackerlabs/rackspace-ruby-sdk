FactoryGirl.define do
  factory :launch_config, class: Rackspace::AutoScale::LaunchConfig do
    id { SecureRandom.hex(25) }
		group ''
		type ''
		args ''
  end
end
