require 'spec_helper'

describe Rackspace::Compute::Volume, :vcr do

  # TODO:
  # Do I want to create seed data? A script?
  # All this takes a DB/schema/location/coordination
  # Do I just setup association-based expects/returns here?


  before do
    @server = Rackspace::Compute::Server.first
    @server.attach_volume(@volume)
    @volume = Rackspace::Compute::Volume.new
  end

  it 'understands has_many resources' do
    expect(volume.is_a?(Rackspace::Compute::Volume)).to be_truthy
  end

  it 'understands belongs_to resource' do
    expect(volume.server.id).to eq(server.id)
  end

end
