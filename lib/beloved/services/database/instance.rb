class Beloved::Database::Instance < Peace::Model
  attr_accessor :id, :name, :created, :updated, :state, :hostname, :links,
    :flavor_id, :volume_size
end
