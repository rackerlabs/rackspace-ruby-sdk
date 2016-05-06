class Rackspace::AutoScale::Group < Peace::Model
  attr_accessor :id, :links

  def pause_group_state; end
  def resume_group_state; end
end
