class Rackspace::AutoScale::Group < Peace::Model
  attr_accessor :id, :links

  action :pause_group_state
  action :resume_group_state
end
