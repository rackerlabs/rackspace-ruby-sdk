class Rackspace::Orchestration < Peace::Service

  has_resource :stack
  has_resource :resource

  def initialize
  end

  def build_information; end

end
