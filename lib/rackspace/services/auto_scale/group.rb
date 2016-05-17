class Rackspace::AutoScale::Group < Peace::Model
  attr_accessor :id, :links
  
  def groups; end
  def create_group; end
  def show_group_configuration; end
  def update_group_configuration; end
  def show_group_details; end
  def show_group_details_including_webhooks; end
  def delete_group; end
  def delete_server_from_group; end
  def get_group_state; end
  def pause_group; end
  def resume_group; end
  def trigger_convergence; end
end
