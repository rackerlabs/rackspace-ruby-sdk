class Rackspace::AutoScale 
  include Peace::Service

  has_resource :group
  has_resource :launch_config
  has_resource :policy
  has_resource :webhook

  def initialize
  end

end
