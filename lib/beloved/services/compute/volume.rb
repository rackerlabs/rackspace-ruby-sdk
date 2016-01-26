class Beloved::Compute::Volume < Peace::Model

  api_requires :server_id
  rackspace_api_path "/servers/{{server_id}}/os-volume_attachments"
  belongs_to :server, :serverId
  json_key_name :volumeAttachments

  attr_accessor :id, :device, :serverId, :volumeId

end
