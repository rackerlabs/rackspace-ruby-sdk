class Rackspace::Orchestration::Stack 
  include Peace::Model
	attr_accessor :capabilities, :creation_time, :description, :disable_rollback, :id, :links, :notification_topics, :outputs, :parameters, :stack_name, :stack_status, :stack_status_reason, :template_description, :timeout_mins, :updated_time
	
	def abandon; end
	def adopt; end
	def details; end
	def preview; end
	def stack_data; end
  def abandon; end
  def build_info; end
  def data; end
  def events; end
  def preview; end
  def template; end
  def validate_template; end
end
