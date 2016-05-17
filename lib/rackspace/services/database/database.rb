class Rackspace::Database::Database < Peace::Model
  attr_accessor :id, :character_set, :collate

  def restart_instance; end
  def resize_the_instance; end
  def resize_the_instance_volume; end
  def create_database_instance; end
  def all_database_instances; end
  def update_database_instance; end
  def database_instance_status_and_details; end
  def change_database_instance_name; end
  def delete_database_instance; end
  def get_default_configuration; end
  def enable_root_user; end
  def root_enabled_status; end
  def create_database; end
  def databases_instance; end
  def delete_database; end
end
