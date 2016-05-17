class Rackspace::CDN::Service < Peace::Model
  attr_accessor :id, :name, :domains, :origins, :caching, :restrictions,
    :flavor_id, :status, :links

  def all_services; end
  def create_a_service; end
  def a_service; end
  def update_a_service; end
  def delete_a_service; end
end
