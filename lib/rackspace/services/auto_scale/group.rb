class Rackspace::AutoScale::Group 
  include Peace::Model
  attr_accessor :id, :links, :state

  def details; end
  def details_including_webhooks; end
  def delete_server_from_group; end
  def group_state; end
  def pause_group; end
  def resume_group; end
  def trigger_convergence; end
end
