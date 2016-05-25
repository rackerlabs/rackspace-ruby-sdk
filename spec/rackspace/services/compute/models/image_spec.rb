require 'spec_helper'

describe Rackspace::Compute::Image, :vcr do

  let(:images){ Rackspace::Compute::Image.all }
  let(:image){ images.first }

  it 'knows how to get all objects' do
    expect(images.count > 0).to be_truthy
  end

end
