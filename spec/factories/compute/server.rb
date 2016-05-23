FactoryGirl.define do
  factory :server, class: Rackspace::Compute::Server do
    id { SecureRandom.hex(25) }
		name ''
		created ''
		updated ''
		progress ''
		user_id { SecureRandom.hex(25) }
		tenant_id { SecureRandom.hex(25) }
  end
end
