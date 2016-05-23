FactoryGirl.define do
  factory :volume_type, class: Rackspace::BlockStorage::VolumeType do
    id { SecureRandom.hex(25) }
		name ''
		extra_specs ''
  end
end
