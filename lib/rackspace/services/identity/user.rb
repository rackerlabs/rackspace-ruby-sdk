class Rackspace::Identity::User < Peace::Model
  attr_accessor :id, :username, :password, :email, :enabled, :created, :updated
  attr_with_alias :password, 'OS-KSADM:password'

  def get_user_by_id; end
  def get_user_by_name; end
end
