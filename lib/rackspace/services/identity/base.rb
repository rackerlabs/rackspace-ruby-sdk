class Rackspace::Identity 
  include Peace::Service

  has_resource :credential
  has_resource :role
  has_resource :tenant
  has_resource :user

  def initialize
  end

end
