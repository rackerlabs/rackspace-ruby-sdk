class Rackspace::AutoScale::Policy 
  include Peace::Model
  attr_accessor :id, :group, :links, :name, :change, :change_percent,
    :cooldown, :type, :args, :desired_capacity

  attr_with_alias :change_percent, :changePercent
  attr_with_alias :desired_capacity, :desiredCapacity

  def details; end
  def execute; end

end
