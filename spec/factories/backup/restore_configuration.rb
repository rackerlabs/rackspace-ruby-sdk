FactoryGirl.define do
  factory :restore_configuration, class: Rackspace::Backup::RestoreConfiguration do
    backup_configuration_id { SecureRandom.hex(25) }
		backup_configuration_name ''
		backup_data_center ''
		# backup_flavor_id { SecureRandom.hex(25) }
		backup_id { SecureRandom.hex(25) }
		backup_machine_id { SecureRandom.hex(25) }
		backup_machine_name ''
		backup_restore_point ''
		destination_machine_id { SecureRandom.hex(25) }
		destination_machine_name ''
		destination_path ''
		encrypted_password ''
		is_encrypted ''
		overwrite_files ''
		public_key ''
		restore_id { SecureRandom.hex(25) }
		restore_state_id { SecureRandom.hex(25) }
  end
end
