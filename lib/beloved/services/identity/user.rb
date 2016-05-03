class Beloved::Identity::User < Peace::Model
  attr_accessor :id, :username, :password, :email, :enabled, :created, :updated
  attr_alias :password, 'OS-KSADM:password'
end
