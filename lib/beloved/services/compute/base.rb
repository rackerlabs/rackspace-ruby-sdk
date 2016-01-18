class Beloved::Compute < Peace::Service

  has_resource :flavor
  has_resource :image

  catalog_name :cloudServersOpenStack

  def initialize
  end

end
