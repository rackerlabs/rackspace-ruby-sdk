FactoryGirl.define do
  factory :high_availability, class: Rackspace::Database::HighAvailability do
    id { SecureRandom.hex(25) }
    name ''
    tenant_id ''
    volume { }
    # flavor_id { SecureRandom.hex(25) }
    replicas []
    replica_source []
  end
end
