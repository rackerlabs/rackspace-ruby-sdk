FactoryGirl.define do
  factory :container, class: Rackspace::Storage::Container do
    bytes ''
		content_type ''
		hash ''
		last_modified ''
		name ''
  end
end
