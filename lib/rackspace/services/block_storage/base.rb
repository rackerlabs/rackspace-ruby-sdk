class Rackspace::BlockStorage 
  include Peace::Service

  has_resource :snapshot
  has_resource :volume
  has_resource :volume_transfer
  has_resource :volume_type

  def initialize
  end

end
