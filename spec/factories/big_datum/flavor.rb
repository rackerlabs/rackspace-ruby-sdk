FactoryGirl.define do
  factory :big_datum_flavor, class: Rackspace::BigDatum::Flavor do
    klass ''
		disk ''
		id { SecureRandom.hex(25) }
		name ''
		ram ''
		vcpus ''
  end
end
