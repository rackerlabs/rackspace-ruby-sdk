FactoryGirl.define do
  factory :group, class: Rackspace::AutoScale::Group do
    id { SecureRandom.hex(25) }
		links ''
		state ''
  end
end
