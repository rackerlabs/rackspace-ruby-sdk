FactoryGirl.define do
  factory :service, class: Rackspace::Cdn::Service do
    id ''
		name ''
		domains ''
		origins ''
		caching ''
		restrictions ''
		flavor_id ''
		status ''
		links ''
  end
end
