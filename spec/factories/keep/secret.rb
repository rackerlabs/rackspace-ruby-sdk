FactoryGirl.define do
  factory :secret, class: Rackspace::Keep::Secret do
    algorithm ''
		bit_length ''
		content_types ''
		created ''
		expiration ''
		mode ''
		name ''
		secret_ref ''
		status ''
		updated ''
  end
end
