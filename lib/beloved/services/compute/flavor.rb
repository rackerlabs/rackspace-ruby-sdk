class Beloved::Compute::Flavor < Peace::Model

  attr_accessor :id, :id, :name, :links

  validates :name, :links, presence: true

  request :list_flavors
  request :list_flavors_detail
  request :get_flavor
end
