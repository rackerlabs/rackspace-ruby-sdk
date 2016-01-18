class Beloved::Compute::KeyPair < Peace::Model

  attr_accessor :fingerprint, :name, :public_key

  rackspace_api_path "os-keypairs"

end
