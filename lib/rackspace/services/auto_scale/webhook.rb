class Rackspace::AutoScale::Webhook < Peace::Model
  attr_accessor :id, :group, :policy, :name, :metadta, :links

  action :execute_anonymous_webhook
end
