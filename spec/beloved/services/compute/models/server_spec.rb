require 'spec_helper'

describe Beloved::Compute::Server do

  let(:servers){ Beloved::Compute::Server.all }
  let(:server){ servers.first }

  it 'has these attributes' do
    expect(server.id).not_to be_nil
    expect(server.links).not_to be_nil
    expect(server.name).not_to be_nil
  end

  it 'knows how to get all objects' do
    expect(servers.count > 0).to be_truthy
  end

  it 'knows how to get nested resources' do
    expect(server.volumes).to eq([])
  end

end
