FactoryGirl.define do
  factory :metadatum, class: Rackspace::Compute::Metadatum do
    id { SecureRandom.hex(25) }
		value ''
  end
end
