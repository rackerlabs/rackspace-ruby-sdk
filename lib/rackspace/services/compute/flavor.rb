class Rackspace::Compute::Flavor < Peace::Model
  include Peace::Details

  attr_accessor :id, :id, :name, :links
  validates :name, :links, presence: true
end
