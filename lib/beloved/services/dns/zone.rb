class Beloved::DNS::Zone < Peace::Model
  attr_accessor :id, :email, :domain, :created, :updated, :account_id, :ttl,
    :nameservers, :comment
  attr_alias :email, :emailAddress
  attr_alias :account_id, :accountId
end
