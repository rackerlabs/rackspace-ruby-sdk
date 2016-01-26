require 'spec_helper'

describe Beloved::Compute::KeyPair, :vcr do

  let(:key_pairs){ Beloved::Compute::KeyPair.all }
  let(:key_pair){ Beloved::Compute::KeyPair.new }

  it 'has these attributes' do
    expect(key_pair.fingerprint).to be_nil
    expect(key_pair.name).to be_nil
    expect(key_pair.public_key).to be_nil
  end

  it 'knows how to get all objects' do
    expect(key_pairs.count).to eq 0
  end

end
