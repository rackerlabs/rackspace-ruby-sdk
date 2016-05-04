class Rackspace::Identity::Tenant < Peace::Model
  attr_accessor :id, :name, :description, :enabled
  
  request :list_tenants
end
