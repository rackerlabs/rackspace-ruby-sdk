require 'spec_helper'

describe Peace::URL, :vcr do
  let(:server) { Rackspace::Compute::Server.first }
  let(:volumes) { server.volumes }
  let(:volume) { volumes.first }

  describe 'class-level objects' do
    it 'generates class-level URLs'
  end

  describe 'object-level objects' do
    it 'generates class-level URLs'

    it 'generates object-level URLs' do
      expect(server.url).to eq "https://iad.servers.api.rackspacecloud.com/v2/930035/servers/95d4f801-858a-4728-9ac0-dc5900d71f76"
    end
  end

end
