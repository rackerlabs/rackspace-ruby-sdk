require 'spec_helper'

describe Rackspace::Compute::Volume, :vcr do

  let(:server){ Rackspace::Compute::Server.first }
  let(:volumes){ Rackspace::Compute::Volume.all(server_id: server.id) }
  let(:volume){ volumes.first }

  it 'has these attributes' do
    expect(volume.id).not_to be_nil
    expect(volume.device).not_to be_nil
    expect(volume.server_id).not_to be_nil
  end

  it 'understands has_many resources' do
    expect(volume.is_a?(Rackspace::Compute::Volume)).to be_truthy
  end

  it 'understands belongs_to resource' do
    expect(volume.server.id).to eq(server.id)
  end

end
