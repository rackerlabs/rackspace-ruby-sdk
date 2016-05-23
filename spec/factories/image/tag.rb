FactoryGirl.define do
  factory :tag, class: Rackspace::Image::Tag do
    created_at ''
		id { SecureRandom.hex(25) }
		owner ''
		schema ''
		status ''
		type ''
		updated_at ''
  end
end
