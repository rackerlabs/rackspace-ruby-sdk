FactoryGirl.define do
  factory :script, class: Rackspace::BigDatum::Script do
    created ''
		id { SecureRandom.hex(25) }
		is_public ''
		links ''
		name ''
		type ''
		updated ''
		url ''
  end
end
