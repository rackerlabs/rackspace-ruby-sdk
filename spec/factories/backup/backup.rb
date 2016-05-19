FactoryGirl.define do
  factory :backup, class: Rackspace::Backup::Backup do
    BackupId ''
		BackupConfigurationId ''
		CurrentState ''
		BackupConfigurationName ''
		MachineAgentId ''
		MachineName ''
		StateChangeTime ''
		IsEncrypted ''
		EncryptionKey ''
  end
end
