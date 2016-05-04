class Rackspace::DNS::Zone < Peace::Model
  include Peace::Details
  
  attr_accessor :id, :email, :domain, :created, :updated, :account_id, :ttl,
    :nameservers, :comment
  attr_with_alias :email, :emailAddress
  attr_with_alias :account_id, :accountId

  action :callback
  action :modify_domain
  action :remove_domain
  action :remove_domains
end
