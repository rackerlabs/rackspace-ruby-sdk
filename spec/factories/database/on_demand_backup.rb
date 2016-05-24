FactoryGirl.define do
  factory :on_demand_backup, class: Rackspace::Database::OnDemandBackup do
    id { SecureRandom.hex(25) }
    status ''
    updated ''
    description ''
    datastore { }
    size ''
    is_automated ''
    name ''
    parent_id { SecureRandom.hex(25) }
    created ''
    flavor_ram ''
    instance_id { SecureRandom.hex(25) }
    source { }
    location_ref ''
    type ''
    volume_size ''
  end
end
