class Beloved::Identity::Role < Peace::Model
  attr_accessor :id, :name, :description
  
  request :list_user_roles
end
