class Rackspace::Orchestration::Template 
  include Peace::Model
	attr_accessor :description, :heat_template_version, :outputs, :parameters, :resources
	
	def validate; end
end
