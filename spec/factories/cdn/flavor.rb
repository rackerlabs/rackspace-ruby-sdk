FactoryGirl.define do
  factory :cdn_flavor, class: Rackspace::CDN::Flavor do
    id { SecureRandom.hex(25) }
		providers ''
		links ''
  end
end
