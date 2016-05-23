FactoryGirl.define do
  factory :attachment, class: Rackspace::Compute::Attachment do
    id { SecureRandom.hex(25) }
		server_id { SecureRandom.hex(25) }
		volume_id { SecureRandom.hex(25) }
		device ''
  end
end
