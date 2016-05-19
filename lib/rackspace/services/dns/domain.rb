class Rackspace::DNS::Domain < Peace::Model
	attr_accessor :account_id, :comment, :created, :email_address, :id, :name, :nameservers, :records_list, :ttl, :updated
	
	class << self
		def domains_by_name; end
	end

	def destroy; end
	def search; end
	def details; end
	def changes; end
	def export; end
	def clone; end
	def import; end
end
