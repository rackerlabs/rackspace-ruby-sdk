require 'spec_helper'

describe Beloved::Compute::Volume do

  let(:volumes){ Beloved::Compute::Volume.all }
  let(:volume){ volumes.first }

  it 'has these attributes' do
    pending "Associations"
    expect(volume.id).not_to be_nil
    expect(volume.device).not_to be_nil
    expect(volume.serverId).not_to be_nil
    expect(volume.volumeId).not_to be_nil
  end

  it 'knows how to get all objects' do
    pending "Associations"
    expect(volumes.count > 0).to be_truthy
  end

end
