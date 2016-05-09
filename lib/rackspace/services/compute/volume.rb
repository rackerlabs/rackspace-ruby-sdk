class Rackspace::Compute::Volume < Peace::Model

  attr_accessor :id, :device, :server_id, :volume_id

  belongs_to :server
  json_key_name :volumeAttachments
  rackspace_api_path "/servers/{{server_id}}/os-volume_attachments"

end
