FactoryGirl.define do
  factory :cluster, class: Rackspace::BigDatum::Cluster do
    created ''
		id { SecureRandom.hex(25) }
		links ''
		name ''
		node_groups ''
		stack_id { SecureRandom.hex(25) }
		status ''
		updated ''
  end
end
