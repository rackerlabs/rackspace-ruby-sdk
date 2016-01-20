require 'spec_helper'

describe Beloved::Compute::Volume do

  let(:volumes){ Beloved::Compute::Volume.all }
  let(:volume){ Beloved::Compute::Volume.new }

  it 'has these attributes' do
    expect(volume.id).to be_nil
    expect(volume.device).to be_nil
    expect(volume.serverId).to be_nil
    expect(volume.volumeId).to be_nil
  end

end
