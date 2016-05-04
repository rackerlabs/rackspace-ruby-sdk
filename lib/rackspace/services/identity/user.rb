class Rackspace::Identity::User < Peace::Model
  attr_accessor :id, :username, :password, :email, :enabled, :created, :updated
  attr_alias :password, 'OS-KSADM:password'

  action :get_user_by_id
  action :get_user_by_name
end
