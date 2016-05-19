FactoryGirl.define do
  factory :user, class: Rackspace::Identity::User do
    id ''
		username ''
		password ''
		email ''
		enabled ''
		created ''
		updated ''
  end
end
