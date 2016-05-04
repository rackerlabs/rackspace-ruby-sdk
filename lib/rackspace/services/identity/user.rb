class Rackspace::Identity::User < Peace::Model
  attr_accessor :id, :username, :password, :email, :enabled, :created, :updated
  attr_alias :password, 'OS-KSADM:password'

  request :create_token
  request :list_users
  request :get_user_by_id
  request :get_user_by_name
  request :create_user
  request :update_user
  request :delete_user
end
