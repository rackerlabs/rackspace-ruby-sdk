require 'spec_helper'

describe Beloved::Compute::Volume do

  let(:server){ Beloved::Compute::Server.first }
  let(:volumes){ Beloved::Compute::Volume.all(server_id: server.id) }
  let(:volume){ Beloved::Compute::Volume.new }

  it 'has these attributes' do
    expect(volume.id).to be_nil
    expect(volume.device).to be_nil
    expect(volume.serverId).to be_nil
    expect(volume.volumeId).to be_nil
  end

  it 'PEACE: knows how to get a nested resource' do
    url = "https://iad.servers.api.rackspacecloud.com/v2/930035/servers/95d4f801-858a-4728-9ac0-dc5900d71f76/os-volume_attachments"
    expect(volume.class.collection_url(server_id: server.id)).to eq(url)
  end

end
