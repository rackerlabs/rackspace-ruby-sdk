require 'spec_helper'

describe Peace::Helpers, :vcr do
  before do
    ENV['SDK'] = "rackspace"
  end

  describe 'wait_for!' do
    it 'waits for a server to be ready' do
      uuid = Rackspace::Compute::Image.first.id
      data = { name: 'Testing', flavorRef: 2, imageRef: uuid }
      server = Rackspace::Compute::Server.new(data)
      Peace::Helpers.save_and_wait_for(server)
    end
  end
end
