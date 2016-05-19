FactoryGirl.define do
  factory :quota, class: Rackspace::Keep::Quotum do
    cas ''
		consumers ''
		containers ''
		orders ''
		secrets ''
  end
end
