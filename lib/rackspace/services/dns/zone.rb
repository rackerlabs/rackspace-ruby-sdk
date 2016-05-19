class Rackspace::DNS::Zone < Peace::Model
  attr_accessor :id, :email, :domain, :created, :updated, :account_id, :ttl,
    :nameservers, :comment

  attr_with_alias :email, :emailAddress
  attr_with_alias :account_id, :accountId

  def callback; end
  def modify_domain; end
  def remove_domain; end
end
