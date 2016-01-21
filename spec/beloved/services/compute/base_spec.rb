require 'spec_helper'

describe Beloved::Compute do

  let(:service){ Beloved::Compute.new }

  it 'knows how to get all resources' do
    expect(service.resources).to eq([:flavor, :image, :server, :key_pair])
  end

end
