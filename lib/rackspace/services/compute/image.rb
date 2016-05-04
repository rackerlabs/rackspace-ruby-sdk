class Rackspace::Compute::Image < Peace::Model
  include Peace::Details

  attr_accessor :id, :name, :created, :updated, :state, :user_id, :tenant_id,
    :progress, :minDisk, :minRam, :disk_config, :links
  attr_alias :disk_config, 'OS-DCF:diskConfig'

end
