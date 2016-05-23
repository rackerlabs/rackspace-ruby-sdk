FactoryGirl.define do
  factory :compute_volume, class: Rackspace::Compute::Volume do
    id { SecureRandom.hex(25) }
		device ''
		server_id { SecureRandom.hex(25) }
		volume_id { SecureRandom.hex(25) }
  end
end
