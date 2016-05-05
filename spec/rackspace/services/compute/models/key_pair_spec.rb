require 'spec_helper'

describe Rackspace::Compute::KeyPair, :vcr do

  let(:key_pairs){ Rackspace::Compute::KeyPair.all }
  let(:key_pair){ Rackspace::Compute::KeyPair.new }

  it 'has these attributes' do
    expect(key_pair.fingerprint).to be_nil
    expect(key_pair.name).to be_nil
    expect(key_pair.public_key).to be_nil
  end

  it 'knows how to get all objects' do
    expect(key_pairs.count).to eq 0
  end

end
