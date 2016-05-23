FactoryGirl.define do
  factory :user, class: Rackspace::Identity::User do
    id { SecureRandom.hex(25) }
		username ''
		password ''
		email ''
		enabled ''
		created ''
		updated ''
  end
end
