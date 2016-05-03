class Beloved::Compute::KeyPair < Peace::Model

  attr_accessor :id, :public_key, :private_key, :user_id, :fingerprint, :name

  rackspace_api_path "os-keypairs"

end
