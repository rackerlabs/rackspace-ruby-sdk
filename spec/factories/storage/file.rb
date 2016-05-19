FactoryGirl.define do
  factory :file, class: Rackspace::Storage::File do
    id ''
		content_length ''
		content_type ''
		content_disposition ''
		etag, ''
  end
end
