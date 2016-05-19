class Rackspace::Orchestration < Peace::Service

  has_resource :resource
  has_resource :stack
  has_resource :stack_event
  has_resource :template

  def initialize
  end

  def build_information; end

end
