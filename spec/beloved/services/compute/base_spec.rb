require 'spec_helper'

describe Beloved::Compute do

  let(:service){ Beloved::Compute.new }

  it 'has these attributes' do
    expect(service.rackspace_name).not_to be_nil
  end

  it 'knows how to get all resources' do
    expect(service.resources.count > 0).to be_truthy
  end

end
