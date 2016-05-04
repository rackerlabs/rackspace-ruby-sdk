class Rackspace::DNS::Zone < Peace::Model
  attr_accessor :id, :email, :domain, :created, :updated, :account_id, :ttl,
    :nameservers, :comment
  attr_alias :email, :emailAddress
  attr_alias :account_id, :accountId

  request :callback
  request :list_domains
  request :list_domain_details
  request :modify_domain
  request :create_domains
  request :remove_domain
  request :remove_domains
  request :list_subdomains
end
