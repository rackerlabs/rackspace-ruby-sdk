FactoryGirl.define do
  factory :attachment, class: Rackspace::Compute::Attachment do
    id ''
		server_id ''
		volume_id ''
		device ''
  end
end
