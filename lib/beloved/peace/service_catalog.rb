require 'rest-client'
require 'openssl'
require 'yaml'

class Peace::ServiceCatalog

  BASE_URL = "https://identity.api.rackspacecloud.com/v2.0/tokens"

  SERVICE_NAME_MAP = {
    'compute' => 'cloudServersOpenStack'
  }

  attr_accessor :id, :services, :access_token, :region, :tenant_id

  def self.load!
    @catalog ||= begin
      puts '===> Loading ServiceCatalog' if ENV['LOG']

      api_key   = ENV['RS_API_KEY']
      username  = ENV['RS_USERNAME']
      region    = ENV['RS_REGION_NAME']
      headers   = {content_type: :json, accept: :json}
      body      = { "auth": { "RAX-KSKEY:apiKeyCredentials": { "apiKey": api_key, "username": username } } }
      response  = ::RestClient.post(BASE_URL, body.to_json, headers)
      body      = JSON.parse(response.body)
      hash      = body['access']['serviceCatalog']
      token     = body['access']['token']['id']
      tenant_id = body['access']['token']['tenant']['id']

      Peace::ServiceCatalog.new(hash, token, region, tenant_id)
    end
  end

  def initialize(hash, token, region, tenant_id)
    @access_token      = token
    @region            = region
    @services          = hash.map{ |s| Service.new(s) }
    Beloved.tenant_id  = tenant_id
    Beloved.auth_token = token
  end

  def available_services
    services.map(&:name).sort
  end

  def url_for(our_service_name)
    services
      .find{ |s| s.name == SERVICE_NAME_MAP[our_service_name] }
        .endpoints
          .find{ |e| e.region.downcase == region.downcase }
            .public_url
  rescue
    raise "No #{our_service_name} endpoint for #{region}"
  end

  class Service
    attr_accessor :id, :name, :endpoints

    def initialize(hash)
      @name      = hash['name']
      @endpoints = hash['endpoints'].map{ |ep| Endpoint.new(ep) }
    end



    class Endpoint
      attr_accessor :id, :region, :tenant_id, :public_url, :internal_url

      def initialize(hash)
        @region       = hash['region']
        @tenant_id    = hash['tenantId']
        @public_url   = hash['publicURL']
        @internal_url = hash['internalURL']
      end
    end
  end

end
