FactoryGirl.define do
  factory :image, class: Rackspace::Compute::Image do
    id { SecureRandom.hex(25) }
		name ''
		created ''
		updated ''
		state ''
		user_id { SecureRandom.hex(25) }
		tenant_id { SecureRandom.hex(25) }
  end
end
