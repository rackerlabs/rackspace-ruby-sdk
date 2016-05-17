class Rackspace::BlockStorage::Snapshot < Peace::Model
  attr_accessor :id, :created_at, :state, :display_name, :display_description,
    :size, :volume_id, :availability_zone, :force
  attr_with_alias :created_at, :createdAt
  attr_with_alias :state, :status

  def create_snapshot; end
  def snapshots; end
  def snapshots_detailed; end
  def show_snapshot_details; end
  def update_snapshot; end
  def delete_snapshot; end
  def show_snapshot_metadata; end

end
