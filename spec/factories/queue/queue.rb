FactoryGirl.define do
  factory :queue, class: Rackspace::Queue::Queue do
    href ''
		name ''
  end
end
