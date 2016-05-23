FactoryGirl.define do
  factory :restore, class: Rackspace::Backup::Restore do
    restore_id { SecureRandom.hex(25) }
		backup_id { SecureRandom.hex(25) }
		destination_machine_id { SecureRandom.hex(25) }
		overwrite_files ''
		backup_configuration_id { SecureRandom.hex(25) }
		backup_configuration_name ''
		backup_restore_point ''
		backup_machine_id { SecureRandom.hex(25) }
		backup_machine_name ''
		backup_flavor ''
		destination_machine_name ''
		destination_path ''
		backup_data_center ''
		is_encrypted ''
		encrypted_password ''
		public_key ''
		restore_state_id { SecureRandom.hex(25) }
  end
end
