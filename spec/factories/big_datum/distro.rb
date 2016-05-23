FactoryGirl.define do
  factory :distro, class: Rackspace::BigDatum::Distro do
    id { SecureRandom.hex(25) }
		links ''
		name ''
		services ''
		version ''
  end
end
