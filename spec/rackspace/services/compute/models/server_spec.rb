require 'spec_helper'

describe Rackspace::Compute::Server, :vcr do
  let(:servers){ Rackspace::Compute::Server.all }
  let(:server){ servers.first }

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

  it 'knows how to change the admin password'
end
