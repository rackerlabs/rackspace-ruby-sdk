FactoryGirl.define do
  factory :volume_transfer, class: Rackspace::BlockStorage::VolumeTransfer do
    created_at ''
		id { SecureRandom.hex(25) }
		links ''
		name ''
		volume_id { SecureRandom.hex(25) }
  end
end
