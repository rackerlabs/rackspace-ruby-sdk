class Rackspace::Database::Instance < Peace::Model
  attr_accessor :id, :name, :created, :updated, :state, :hostname, :links,
    :flavor_id, :volume_size

  def check_root_user; end
  def enable_root_user; end
  def restart; end
  def resize; end
  def resize_volume; end
end
