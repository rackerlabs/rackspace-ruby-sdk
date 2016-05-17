class Rackspace::Queue::Message < Peace::Model
  attr_accessor :id, :age, :ttl, :body, :href, :claim_id
  
  def post_message; end
	def get_messages; end
	def get_messages_by_id; end
	def bulk_delete_messages_by_id; end
	def show_message_details; end
	def delete_message; end
end
