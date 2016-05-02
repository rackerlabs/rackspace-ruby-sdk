class Beloved::Storage < Peace::Service

  has_resource :account
  has_resource :directory
  has_resource :file
  has_resource :files

  def initialize
  end

end
