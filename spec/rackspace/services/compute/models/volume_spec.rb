require 'spec_helper'

describe Rackspace::Compute::Volume, :vcr do

  let(:server){ Rackspace::Compute::Server.first }
  let(:volumes){ server.volumes }
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

  it 'knows how to reload its self' do
    expect(volume.reload).to be_present
  end

end
