class Rackspace::Compute::Flavor < Peace::Model
  attr_accessor :id, :id, :name, :links
  validates :name, :links, presence: true
end
