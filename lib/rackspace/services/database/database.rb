class Rackspace::Database::Database < Peace::Model
  attr_accessor :id, :character_set, :collate

  request :list_databases
  request :create_database
  request :delete_database
end
