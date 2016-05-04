require 'rest-client'
require 'openssl'
require 'yaml'

class Peace::ServiceCatalog

  BASE_URL = "https://identity.api.rackspacecloud.com/v2.0/tokens"

  SERVICE_NAME_MAP = {
    'auto_scale'     => 'autoscale',
    'backup'         => 'cloudBackup',
    'big_data'       => 'cloudBigData',
    'block_storage'  => 'cloudBlockStorage',
    'cdn'            => 'cloudFilesCDN',
    'compute'        => 'cloudServersOpenStack',
    'databases'      => 'cloudDatabases',
    'dns'            => 'cloudDNS',
    'feeds'          => 'cloudFeeds',
    'files'          => 'cloudFiles',
    'images'         => 'cloudImages',
    'load_balancers' => 'cloudLoadBalancers',
    'metrics'        => 'cloudMetrics',
    'monitoring'     => 'cloudMonitoring',
    'networks'       => 'cloudNetworks',
    'orchestration'  => 'cloudOrchestration',
    'queues'         => 'cloudQueues',
    'sites'          => 'cloudSites'
  }

  SERVICE_KLASSES = {
    'auto_scale'     => 'Beloved::AutoScale',
    'backup'         => nil,
    'big_data'       => nil,
    'block_storage'  => 'Beloved::BlockStorage',
    'cdn'            => 'Beloved::CDN',
    'compute'        => 'Beloved::Compute',
    'databases'      => 'Beloved::Database',
    'dns'            => 'Beloved::DNS',
    'feeds'          => nil,
    'files'          => 'Beloved::Storage',
    'images'         => nil,
    'load_balancers' => 'Beloved::LoadBalancers',
    'metrics'        => nil,
    'monitoring'     => 'Beloved::Monitoring',
    'networks'       => 'Beloved::Networking',
    'orchestration'  => 'Beloved::Orchestration',
    'queues'         => 'Beloved::Queues',
    'sites'          => nil
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
    names = services.map(&:name).inject([]) do |memo, rax_name|
      service = SERVICE_NAME_MAP.find{|k,v| v == rax_name }
      memo << service[0] if service
      memo
    end.sort

    services = names.map{ |name| SERVICE_KLASSES[name] }.compact
    services.map{ |s| s.constantize }
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
