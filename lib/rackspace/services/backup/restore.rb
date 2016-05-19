class Rackspace::Backup::Restore < Peace::Model
	class << self
		def backups_available_for_restore; end
		def get_restore_report; end
	end

	def start_or_stop_a_restore_manually; end
	def details; end
end
