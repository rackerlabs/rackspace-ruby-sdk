class Rackspace::Networking::SecurityGroup < Peace::Model
  attr_accessor :id, :name, :description, :tenant_id
  
  def security_groups; end
	def create_security_group; end
	def show_security_group; end
	def delete_security_group; end
	def security_group_rules; end
	def create_security_group_rule; end
	def show_security_group_rule; end
	def delete_security_group_rule; end
end
