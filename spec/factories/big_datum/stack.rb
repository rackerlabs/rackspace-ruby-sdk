FactoryGirl.define do
  factory :big_datum_stack, class: Rackspace::BigDatum::Stack do
    created ''
		description ''
		distro ''
		id { SecureRandom.hex(25) }
		links ''
		name ''
		node_groups ''
		services ''
  end
end
