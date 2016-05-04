class Beloved::AutoScale::LaunchConfig < Peace::Model
  attr_accessor :id, :group, :type, :args
  
  request :get_launch_config
  request :update_launch_config
end
