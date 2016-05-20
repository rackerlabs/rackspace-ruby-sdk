class Rackspace::BlockStorage::VolumeTransfer < Peace::Model
	attr_accessor :created_at, :id, :links, :name, :volume_id
	belongs_to :volume

	class << self
		def volume_transfers_detailed; end
	end

	def details; end
	def accept_a_volume_transfer; end
end
