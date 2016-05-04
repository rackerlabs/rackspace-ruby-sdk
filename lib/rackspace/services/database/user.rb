class Rackspace::Database::User < Peace::Model
  attr_accessor :id, :password, :databases, :host
  
  action :grant_user_access
  action :revoke_user_access
end
