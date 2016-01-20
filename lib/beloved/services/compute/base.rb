class Beloved::Compute < Peace::Service

  has_resource :flavor
  has_resource :image
  has_resource :server
  has_resource :key_pair

  def initialize
  end

end
