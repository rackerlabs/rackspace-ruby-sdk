FactoryGirl.define do
  factory :virtual_interface, class: Rackspace::Compute::VirtualInterface do
    id { SecureRandom.hex(25) }
		mac_address ''
		ip_addresses ''
  end
end
