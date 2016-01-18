require 'spec_helper'

describe Beloved::Compute do

  let(:service){ Beloved::Compute.new }

  it 'knows how to get all resources' do
    expect(service.resources.count > 0).to be_truthy
  end

end
