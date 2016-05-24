FactoryGirl.define do
  factory :configuration, class: Rackspace::Database::Configuration do
    created ''
    datastore_name ''
    datastore_version_id { SecureRandom.hex(25) }
    datastore_version_name ''
    description ''
    id { SecureRandom.hex(25) }
    instance_count ''
    name ''
    updated ''
    values {}
  end
end
