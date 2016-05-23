FactoryGirl.define do
  factory :file, class: Rackspace::Storage::File do
    id { SecureRandom.hex(25) }
		content_length ''
		content_type ''
		content_disposition ''
		etag ''
  end
end
