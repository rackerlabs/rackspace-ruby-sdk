require 'spec_helper'

describe Beloved::Compute do

  let(:service){ Beloved::Compute.new }

  it 'knows how to get all resources' do
    expect(service.resources).to eq([
      :attachment, :flavor, :image, :images, :key_pair, :metadatum, :network,
      :server, :server, :virtual_interface, :volume
    ])
  end

end
