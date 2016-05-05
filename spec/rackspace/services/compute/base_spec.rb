require 'spec_helper'

describe Rackspace::Compute, :vcr do

  let(:service){ Rackspace::Compute.new }

  it 'knows how to get all resources' do
    expect(service.resources).to eq([
      :attachment, :flavor, :image, :images, :key_pair, :metadatum, :network,
      :server, :server, :virtual_interface, :volume
    ])
  end

  it 'knows how to access resources' do
    expect(service.servers.first.class).to eq(Rackspace::Compute::Server)
  end

end
