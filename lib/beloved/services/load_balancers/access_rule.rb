class Beloved::LoadBalancers::AccessRule < Peace::Model
  attr_accessor :id, :address, :type

  request :create_access_rule
  request :list_access_rules
  request :delete_access_rule
  request :delete_all_access_rules
end
