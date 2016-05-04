class Rackspace::Database::Flavor < Peace::Model
  attr_accessor :id, :name, :ram, :links

  request :list_flavors
  request :get_flavor
end
