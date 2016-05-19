FactoryGirl.define do
  factory :log_connection, class: Rackspace::LoadBalancer::LogConnection do
    enabled ''
  end
end
