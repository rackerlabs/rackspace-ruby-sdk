require 'spec_helper'

describe Beloved::Compute::KeyPair do

  let(:key_pairs){ Beloved::Compute::KeyPair.all }
  let(:key_pair){ key_pairs.first }

  it 'has these attributes' do
    pending "Data"
    expect(key_pair.fingerprint).not_to be_nil
    expect(key_pair.name).not_to be_nil
    expect(key_pair.public_key).not_to be_nil
  end

  it 'knows how to get all objects' do
    pending "Data"
    expect(key_pairs.count > 0).to be_truthy
  end

end
