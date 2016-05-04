class Rackspace::AutoScale::Policy < Peace::Model
  attr_accessor :id, :group, :links, :name, :change, :change_percent,
    :cooldown, :type, :args, :desired_capacity

  attr_alias :change_percent, :changePercent
  attr_alias :desired_capacity, :desiredCapacity

  action :execute_policy

end
