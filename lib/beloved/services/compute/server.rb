class Beloved::Compute::Server < Peace::Model

  attr_accessor :id, :links, :name, :imageRef, :flavorRef

  has_many :volumes, {server_id: :id}

end
