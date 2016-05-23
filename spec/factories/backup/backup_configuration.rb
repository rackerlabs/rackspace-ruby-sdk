FactoryGirl.define do
  factory :backup_configuration, class: Rackspace::Backup::BackupConfiguration do
    backup_configuration_id { SecureRandom.hex(25) }
		machine_agent_id { SecureRandom.hex(25) }
		machine_name ''
		flavor ''
		is_encrypted ''
		backup_configuration_name ''
		is_active ''
		is_deleted ''
		version_retention ''
		backup_configuration_schedule_id { SecureRandom.hex(25) }
		missed_backup_action_id { SecureRandom.hex(25) }
		frequency ''
		start_time_hour ''
		start_time_minute ''
		start_time_am_pm ''
		day_of_week_id { SecureRandom.hex(25) }
		hour_interval ''
		time_zone_id { SecureRandom.hex(25) }
		next_scheduled_run_time ''
		last_run_time ''
		last_run_backup_report_id { SecureRandom.hex(25) }
		notify_recipients ''
		notify_success ''
		notify_failure ''
		inclusions ''
		exclusions ''
  end
end
