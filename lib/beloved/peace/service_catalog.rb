require 'rest-client'
require 'openssl'
require 'yaml'

class Peace::ServiceCatalog

  BASE_URL = "https://identity.api.rackspacecloud.com/v2.0/tokens"

  attr_accessor :services, :access_token, :region

  def self.load!
    @catalog ||= begin
      api_key  = ENV['RS_API_KEY']
      username = ENV['RS_USERNAME']
      region   = ENV['RS_REGION_NAME']
      headers  = {content_type: :json, accept: :json}
      body     = { "auth": { "RAX-KSKEY:apiKeyCredentials": { "apiKey": api_key, "username": username } } }
      response = ::RestClient.post(BASE_URL, body.to_json, headers)
      body     = JSON.parse(response.body)
      hash     = body['access']['serviceCatalog']
      token    = body['access']['token']['id']

      Peace::ServiceCatalog.new(hash, token, region)
    end
  end

  def initialize(hash, token, region)
    @access_token = token
    @services     = hash.map{ |s| Service.new(s) }

    Beloved.auth_token = token
  end

  def available_services
    services.map(&:name).sort
  end

  def url_for(service_name)
  end

  class Service
    attr_accessor :name, :endpoints

    def initialize(hash)
      @name      = hash['name']
      @endpoints = hash['endpoints'].map{ |ep| Endpoint.new(ep) }
    end



    class Endpoint
      attr_accessor :region, :tenant_id, :public_url, :internal_url

      def initialize(hash)
        @region       = hash['region']
        @tenant_id    = hash['tenantId']
        @public_url   = hash['publicURL']
        @internal_url = hash['internalURL']
      end
    end
  end

end
