require 'spec_helper'

describe Rackspace::Compute::Volume, :vcr do

  let(:server){ Rackspace::Compute::Server.first }
  let(:volume){ build(:compute_volume) }

  before do
    allow(server).to receive(:volumes) { [volume] }
    allow(volume).to receive(:server) { server }
  end

  it 'understands has_many resources' do
    expect(volume.is_a?(Rackspace::Compute::Volume)).to be_truthy
  end

  it 'understands belongs_to resource' do
    expect(volume.server.id).to eq(server.id)
  end

end
