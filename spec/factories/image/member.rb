FactoryGirl.define do
  factory :member, class: Rackspace::Image::Member do
    created_at ''
		image_id { SecureRandom.hex(25) }
		member_id { SecureRandom.hex(25) }
		schema ''
		status ''
		updated_at ''
  end
end
