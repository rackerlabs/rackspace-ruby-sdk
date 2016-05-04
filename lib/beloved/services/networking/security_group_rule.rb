class Beloved::Networking::SecurityGroupRule < Peace::Model
  attr_accessor :id, :direction, :ethertype, :port_range_max, :port_range_min,
    :protocol, :remote_group_id, :remote_ip_prefix, :security_group_id,
    :tenant_id

  request :list_security_group_rules
  request :create_security_group_rule
  request :show_security_group_rule
  request :delete_security_group_rule
end
