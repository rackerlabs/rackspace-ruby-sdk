FactoryGirl.define do
  factory :scheduled_backup, class: Rackspace::Database::ScheduledBackup do
    id { SecureRandom.hex(25) }
    action ''
    created ''
    day_of_month ''
    day_of_week ''
    hour ''
    instance_id { SecureRandom.hex(25) }
    last_scheduled ''
    minute ''
    month ''
    next_run ''
    updated ''
  end
end
