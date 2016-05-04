class Beloved::AutoScale::Webhook < Peace::Model
  attr_accessor :id, :group, :policy, :name, :metadta, :links

  request :execute_anonymous_webhook
  request :get_webhook
  request :list_webhooks
  request :create_webhook
  request :update_webhook
  request :delete_webhook
end
