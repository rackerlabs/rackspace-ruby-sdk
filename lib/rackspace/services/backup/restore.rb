class Rackspace::Backup::Restore < Peace::Model
	class << self
		def backups_available_for_restore; end
		def restore_report; end
	end

	def start_or_stop; end
	def details; end
end
