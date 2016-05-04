class Beloved::Identity::Credential < Peace::Model
  attr_accessor :id, :username
  
  request :list_credentials
end
