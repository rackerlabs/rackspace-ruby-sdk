require 'rest-client'
require 'openssl'
require 'yaml'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class Peace::ServiceCatalog

  BASE_URL = "https://identity.api.rackspacecloud.com/v2.0/tokens"

  attr_accessor :services, :access_token

  def self.for(api_key, username)
    @catalog ||= begin
      # TODO: Remove this before very long
      fog      = ::YAML.load_file("/Users/mdarby/.fog")
      api_key  = fog[:default][:rackspace_api_key]
      username = fog[:default][:rackspace_username]
      # TODO: Remove this before very long

      headers  = {content_type: :json, accept: :json}
      body     = { "auth": { "RAX-KSKEY:apiKeyCredentials": { "apiKey": api_key, "username": username } } }
      response = ::RestClient.post(BASE_URL, body.to_json, headers)
      body     = JSON.parse(response.body)
      hash     = body['access']['serviceCatalog']
      token    = body['access']['token']['id']

      Peace::ServiceCatalog.new(hash, token)
    end
  end

  def initialize(hash, token)
    @access_token = token
    @services     = hash.map{ |s| Service.new(s) }
  end

  def available_services
    services.map(&:name).sort
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
