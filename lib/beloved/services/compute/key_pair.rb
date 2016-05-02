class Beloved::Compute::KeyPair < Peace::Model

  attr_accessor :public_key, :private_key, :user_id, :fingerprint

  rackspace_api_path "os-keypairs"

end
