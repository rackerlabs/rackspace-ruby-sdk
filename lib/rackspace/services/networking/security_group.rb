class Rackspace::Networking::SecurityGroup < Peace::Model
  attr_accessor :id, :name, :description, :tenant_id

	def rules; end
	def create_rule; end
	def delete_rule; end
end
