class Rackspace::Backup::Backup < Peace::Model
	class << self
		def completed_backups; end
		def get_a_backup_report; end
	end

	def start_or_stop_a_backup_manually; end
	def details; end
end
