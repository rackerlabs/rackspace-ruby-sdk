FactoryGirl.define do
  factory :session_persistence, class: Rackspace::LoadBalancer::SessionPersistence do
    persistence_type ''
  end
end
