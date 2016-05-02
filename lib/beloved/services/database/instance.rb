class Beloved::Database::Instance < Peace::Model
  attr_accessor :name, :created, :updated, :state, :hostname, :links,
    :flavor_id, :volume_size
end
