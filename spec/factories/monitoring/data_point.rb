FactoryGirl.define do
  factory :data_point, class: Rackspace::Monitoring::DataPoint do
    id ''
		num_points ''
		average ''
		variance ''
		min ''
		max ''
		timestamp ''
		metric ''
  end
end
