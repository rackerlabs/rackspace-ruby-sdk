class Rackspace::AutoScale::Webhook < Peace::Model
  attr_accessor :id, :group, :policy, :name, :metadta, :links

  def execute_anonymous_webhook; end
  def webhooks_the_policy; end
  def create_webhook; end
  def show_webhook_details; end
  def update_webhook; end
  def delete_webhook; end
end
