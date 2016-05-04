class Rackspace::Networking::SecurityGroup < Peace::Model
  attr_accessor :id, :name, :description, :tenant_id

  request :list_security_groups
  request :create_security_group
  request :show_security_group
  request :update_security_group
  request :delete_security_group
end
