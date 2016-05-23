FactoryGirl.define do
  factory :metadatum_item, class: Rackspace::Compute::MetadatumItem do
    id { SecureRandom.hex(25) }
		meta ''
  end
end
