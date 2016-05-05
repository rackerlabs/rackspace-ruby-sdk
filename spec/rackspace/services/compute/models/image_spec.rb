require 'spec_helper'

describe Rackspace::Compute::Image, :vcr do

  let(:images){ Rackspace::Compute::Image.all }
  let(:image){ images.first }

  it 'has these attributes' do
    expect(image.id).not_to be_nil
    expect(image.name).not_to be_nil
    expect(image.links).not_to be_nil
  end

  it 'knows how to get all objects' do
    expect(images.count > 0).to be_truthy
  end

end