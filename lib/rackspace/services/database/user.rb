class Rackspace::Database::User < Peace::Model
  attr_accessor :id, :password, :databases, :host

  def grant_user_access; end
  def revoke_user_access; end
	def create_user; end
	def users_in_database_instance; end
	def change_user_password; end
	def modify_user_attributes; end
	def user; end
	def delete_user; end
	def user_access; end
	def grant_user_access; end
	def revoke_user_access; end
end
