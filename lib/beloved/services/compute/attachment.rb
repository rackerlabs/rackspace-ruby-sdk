class Beloved::Compute::Attachment < Peace::Model
  attr_accessor :id, :server_id, :volume_id, :device
  attr_alias :server_id, :serverId
  attr_alias :volume_id, :volumeId

  request :attach_volume
  request :get_attachment
  request :list_attachments
  request :delete_attachment

end
