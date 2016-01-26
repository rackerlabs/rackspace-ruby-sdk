require 'spec_helper'

describe Beloved::Compute::Volume do

  let(:server){ Beloved::Compute::Server.first }
  let(:volumes){ Beloved::Compute::Volume.all(server_id: server.id) }
  let(:volume){ volumes.first }

  it 'has these attributes' do
    expect(volume.id).not_to be_nil
    expect(volume.device).not_to be_nil
    expect(volume.serverId).not_to be_nil
    expect(volume.volumeId).not_to be_nil
  end

  it 'understands has_many resources' do
    expect(volume.is_a?(Beloved::Compute::Volume)).to be_truthy
  end

  it 'understands belongs_to resource' do
    expect(volume.server.id).to eq(server.id)
  end

end
