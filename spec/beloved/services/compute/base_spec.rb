require 'spec_helper'

describe Rackspace::Compute do

  let(:service){ Rackspace::Compute.new }

  it 'knows how to get all resources' do
    expect(service.resources).to eq([
      :attachment, :flavor, :image, :images, :key_pair, :metadatum, :network,
      :server, :server, :virtual_interface, :volume
    ])
  end

end
