FactoryGirl.define do
  factory :policy, class: Rackspace::AutoScale::Policy do
    id { SecureRandom.hex(25) }
		group ''
		links ''
		name ''
		change ''
		change_percent ''
  end
end
