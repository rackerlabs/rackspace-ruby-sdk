FactoryGirl.define do
  factory :datastore_type, class: Rackspace::Database::DatastoreType do
    default_version ''
    id { SecureRandom.hex(25) }
    links []
    name ''
    versions []
  end
end
