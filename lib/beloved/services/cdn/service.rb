class Beloved::CDN::Service < Peace::Model
  attr_accessor :id, :name, :domains, :origins, :caching, :restrictions,
    :flavor_id, :status, :links

  request :create_service
  request :delete_assets
  request :delete_service
  request :get_home_document
  request :get_ping
  request :get_service
  request :list_services
  request :update_service
end
