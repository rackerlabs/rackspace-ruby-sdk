require 'spec_helper'

describe Rackspace::Compute::Server, :vcr do
  let(:servers){ Rackspace::Compute::Server.all }
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
    expect(server.volumes).not_to eq([])
  end

  it 'knows how to save its self' do
    expect(server.try(:progress)).to eq(nil)
    server.save
    expect(server.try(:progress)).to eq(100)
  end

  it 'knows how to create a new server' do
    uuid = Rackspace::Compute::Image.first.id
    data = { name: 'Testing', flavorRef: 2, imageRef: uuid }
    server = Rackspace::Compute::Server.new(data)
    expect{ server.save }.to change(server, :id)
  end

  it 'handles attribute names like "OS-DCF:diskConfig"' do
    attr = "OS-DCF:diskConfig"
    # binding.pry
  end
end
