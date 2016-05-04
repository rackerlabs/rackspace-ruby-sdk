class Beloved::Database::User < Peace::Model
  attr_accessor :id, :password, :databases, :host
  
  request :list_users
  request :create_user
  request :delete_user
  request :grant_user_access
  request :revoke_user_access
end
