FactoryGirl.define do
  factory :record, class: Rackspace::DNS::Record do
    id ''
		name ''
		value ''
		ttl ''
		type ''
		priority ''
		created ''
		updated ''
  end
end
