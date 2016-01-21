require 'spec_helper'

describe Beloved::Compute::Flavor do

  let(:flavors){ Beloved::Compute::Flavor.all }
  let(:flavor){ flavors.first }

  it 'has these attributes' do
    expect(flavor.id).not_to be_nil
    expect(flavor.name).not_to be_nil
    expect(flavor.links).not_to be_nil
  end

  it 'knows how to get all objects' do
    expect(flavors.count > 0).to be_truthy
  end

end
