FactoryGirl.define do
  factory :backup_user, class: Rackspace::Backup::User do
    agent_version ''
		architecture ''
		backup_container ''
		backup_vault_size ''
		cleanup_allowed ''
		datacenter ''
		flavor_id { SecureRandom.hex(25) }
		ip_address ''
		is_disabled ''
		is_encrypted ''
		machine_agent_id { SecureRandom.hex(25) }
		machine_name ''
		operating_system ''
		operating_system_version ''
		public_key ''
		status ''
		time_of_last_successful_backup ''
		use_service_net ''
  end
end
