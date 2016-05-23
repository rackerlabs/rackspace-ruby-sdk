FactoryGirl.define do
  factory :big_datum_node, class: Rackspace::BigDatum::Node do
    addresses ''
		components ''
		created ''
		flavor_id { SecureRandom.hex(25) }
		id { SecureRandom.hex(25) }
		links ''
		name ''
		node_group ''
		status ''
		updated ''
  end
end
