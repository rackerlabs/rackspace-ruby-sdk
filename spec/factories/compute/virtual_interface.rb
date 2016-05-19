FactoryGirl.define do
  factory :virtual_interface, class: Rackspace::Compute::VirtualInterface do
    id ''
		mac_address ''
		ip_addresses ''
  end
end
