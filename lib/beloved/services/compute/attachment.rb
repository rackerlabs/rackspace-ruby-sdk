class Beloved::Compute::Attachment < Peace::Model
  attr_accessor :id, :server_id, :volume_id, :device
  attr_alias :server_id, :serverId
  attr_alias :volume_id, :volumeId
end
