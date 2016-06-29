class Rackspace::Identity::User 
  include Peace::Model
  attr_accessor :id, :username, :password, :email, :enabled, :created, :updated
  attr_with_alias :password, 'OS-KSADM:password'

  def find_by_id; end
  def find_by_name; end
end
