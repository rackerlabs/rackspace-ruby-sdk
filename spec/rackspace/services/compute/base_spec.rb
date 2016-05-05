require 'spec_helper'

describe Rackspace::Compute, :vcr do

  let(:service){ Rackspace::Compute.new }

  it 'knows how to get all resources' do
    expect(service.available_resources).to eq([
      :attachment, :flavor, :image, :images, :key_pair, :metadatum, :network,
      :server, :virtual_interface, :volume
    ])
  end

  it 'knows how to access resources' do
    expect(service.servers.first.class).to eq(Rackspace::Compute::Server)
  end

  it 'knows how to access nested resources' do
    obj = service.servers.first.volumes.first
    expect(obj.class).to eq(Rackspace::Compute::Volume)
  end

end
