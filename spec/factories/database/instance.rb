FactoryGirl.define do
  factory :instance, class: Rackspace::Database::Instance do
    id { SecureRandom.hex(25) }
    created ''
    datastore  { }
    flavor { }
    hostname ''
    links  []
    name ''
    status ''
    updated ''
    volume { }
  end
end
