class Beloved::Compute::Flavor < Peace::Model

  attr_accessor :id, :name, :links

  validates :name, :links, presence: true

end
