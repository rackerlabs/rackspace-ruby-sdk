FactoryGirl.define do
  factory :volume, class: Rackspace::BlockStorage::Volume do
    id ''
		created_at ''
		state ''
		display_name ''
		display_description ''
		size ''
		attachments ''
		volume_type ''
		availability_zone ''
		image_id ''
  end
end