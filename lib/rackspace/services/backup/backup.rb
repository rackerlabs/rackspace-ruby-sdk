class Rackspace::Backup::Backup < Peace::Model
	attr_accessor :BackupId, :BackupConfigurationId, :CurrentState, :BackupConfigurationName, :MachineAgentId, :MachineName, :StateChangeTime, :IsEncrypted, :EncryptionKey
	
	class << self
		def completed_backups; end
		def backup_report; end
	end

	def start_or_stop_a_backup_manually; end
	def details; end
end
