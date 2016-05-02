class Beloved::AutoScale::Policy < Peace::Model
  attr_accessor :group, :links, :name, :change, :change_percent,
    :cooldown, :type, :args, :desired_capacity

  attr_alias :change_percent, :changePercent
  attr_alias :desired_capacity, :desiredCapacity
end
