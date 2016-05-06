class Rackspace::Database::User < Peace::Model
  attr_accessor :id, :password, :databases, :host

  def grant_user_access; end
  def revoke_user_access; end
end
