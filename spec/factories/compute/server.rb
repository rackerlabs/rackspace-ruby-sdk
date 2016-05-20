FactoryGirl.define do
  factory :server, class: Rackspace::Compute::Server do
    id ''
		name ''
		created ''
		updated ''
		progress ''
		user_id ''
		tenant_id ''
  end
end
