FactoryGirl.define do
  factory :role, class: Rackspace::Identity::Role do
    id { SecureRandom.hex(25) }
		name ''
		description ''
  end
end
