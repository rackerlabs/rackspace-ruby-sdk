class Rackspace::DNS::Record < Peace::Model
  attr_accessor :id, :name, :value, :ttl, :type, :priority, :created, :updated

  def remove_records; end
  def add_records; end
	def records; end
	def search_records; end
	def add_records; end
	def delete_records; end
	def update_records; end
	def delete_record; end
	def update_record; end
	def show_record_details; end
end
