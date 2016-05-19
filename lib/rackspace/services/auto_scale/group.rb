class Rackspace::AutoScale::Group < Peace::Model
  attr_accessor :id, :links, :state

  def details; end
  def details_including_webhooks; end
  def delete_server_from_group; end
  def get_group_state; end
  def pause_group; end
  def resume_group; end
  def trigger_convergence; end
end
