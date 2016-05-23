FactoryGirl.define do
  factory :task, class: Rackspace::Image::Task do
    created_at ''
		id { SecureRandom.hex(25) }
		input ''
		message ''
		owner ''
		schema ''
		status ''
		type ''
		updated_at ''
  end
end
