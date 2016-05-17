class Rackspace::AutoScale::Policy < Peace::Model
  attr_accessor :id, :group, :links, :name, :change, :change_percent,
    :cooldown, :type, :args, :desired_capacity

  attr_with_alias :change_percent, :changePercent
  attr_with_alias :desired_capacity, :desiredCapacity

  def execute_policy; end

  def policies; end
  def create_scaling_policy; end
  def show_policy_details; end
  def update_scaling_policy; end
  def delete_scaling_policy; end
  def execute_policy; end

end
