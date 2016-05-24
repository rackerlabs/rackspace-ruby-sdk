FactoryGirl.define do
  factory :replication, class: Rackspace::Database::Replication do
    id { SecureRandom.hex(25) }
    status ''
    updated ''
    name ''
    links [ ]
    created ''
    ip []
    volume ''
    # flavor_id { SecureRandom.hex(25) }
    datastore { }
    replica_of { }
  end
end
