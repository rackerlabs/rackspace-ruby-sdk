class Rackspace::AutoScale::Policy < Peace::Model
  attr_accessor :id, :group, :links, :name, :change, :change_percent,
    :cooldown, :type, :args, :desired_capacity

  attr_alias :change_percent, :changePercent
  attr_alias :desired_capacity, :desiredCapacity

  request :list_policies
  request :create_policy
  request :get_policy
  request :update_policy
  request :delete_policy
  request :execute_policy
  
end
