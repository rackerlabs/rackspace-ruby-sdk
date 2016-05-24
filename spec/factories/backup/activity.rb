FactoryGirl.define do
  factory :activity, class: Rackspace::Backup::Activity do
    backup_id { SecureRandom.hex(25) }
    current_state ''
    destination_machine_agent_id { SecureRandom.hex(25) }
    destination_machine_name ''
    display_name ''
    id { SecureRandom.hex(25) }
    is_backup_configuration_deleted ''
    parent_id { SecureRandom.hex(25) }
    source_machine_agent_id { SecureRandom.hex(25) }
    source_machine_name ''
    time_of_activity ''
    type ''
  end
end
