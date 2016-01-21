class Beloved::Compute::Volume < Peace::Model

  attr_accessor :id, :device, :serverId, :volumeId

  requires :server_id

  rackspace_api_path "/servers/{{serverId}}/os-volume_attachments"

end


# Beloved::Compute::Volume.all(server_id)
