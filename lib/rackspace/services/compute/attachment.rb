class Rackspace::Compute::Attachment < Peace::Model
  attr_accessor :id, :server_id, :volume_id, :device
  attr_with_alias :server_id, :serverId
  attr_with_alias :volume_id, :volumeId

  action :attach_volume
end
