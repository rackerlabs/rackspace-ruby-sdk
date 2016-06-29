class Rackspace::BlockStorage::Snapshot 
  include Peace::Model
  include Peace::Metadata
  
  attr_accessor :id, :created_at, :state, :display_name, :display_description, :size, :volume_id, :availability_zone, :force

  attr_with_alias :created_at, :createdAt
  attr_with_alias :state, :status

  class << self
    def snapshots_detailed; end
  end

  def details; end
  def metadata; end

end
