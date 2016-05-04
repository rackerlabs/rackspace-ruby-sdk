class Beloved::AutoScale::Group < Peace::Model
  attr_accessor :id, :links

  request :list_groups
  request :create_group
  request :get_group
  request :delete_group
  request :get_group_state
  request :pause_group_state
  request :resume_group_state
end
