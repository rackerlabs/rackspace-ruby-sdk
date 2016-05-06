class Rackspace::AutoScale::Webhook < Peace::Model
  attr_accessor :id, :group, :policy, :name, :metadta, :links

  def execute_anonymous_webhook; end
end
