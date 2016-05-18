class Rackspace::BigDatum < Peace::Service

  has_resource :clusters
  has_resource :credentials
  has_resource :distros
  has_resource :flavors
  has_resource :nodes
  has_resource :scripts
  has_resource :stacks

  def initialize
  end

end
