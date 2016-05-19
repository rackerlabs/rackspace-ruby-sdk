require "rackspace/version"
require "rackspace/peace/base"
require 'pry'

module Rackspace

  SERVICE_NAME_MAP = {
    'auto_scale'     => 'autoscale',
    'backup'         => 'cloudBackup',
    'big_data'       => 'cloudBigData',
    'block_storage'  => 'cloudBlockStorage',
    'cdn'            => 'cloudFilesCDN',
    'compute'        => 'cloudServersOpenStack',
    'database'       => 'cloudDatabases',
    'dns'            => 'cloudDNS',
    'feeds'          => 'cloudFeeds',
    'files'          => 'cloudFiles',
    'images'         => 'cloudImages',
    'keep'           => 'cloudKeep',
    'load_balancer'  => 'cloudLoadBalancers',
    'metrics'        => 'cloudMetrics',
    'monitoring'     => 'cloudMonitoring',
    'networks'       => 'cloudNetworks',
    'orchestration'  => 'cloudOrchestration',
    'queue'          => 'cloudQueues'
  }

  SERVICE_KLASSES = {
    'auto_scale'     => 'Rackspace::AutoScale',
    'backup'         => 'Rackspace::Backup',
    'big_data'       => 'Rackspace::BigDatum',
    'block_storage'  => 'Rackspace::BlockStorage',
    'cdn'            => 'Rackspace::CDN',
    'compute'        => 'Rackspace::Compute',
    'database'       => 'Rackspace::Database',
    'dns'            => 'Rackspace::DNS',
    'feeds'          => 'Rackspace::Feed',
    'files'          => 'Rackspace::Storage',
    'images'         => 'Rackspace::Image',
    'keep'           => 'Rackspace::Keep',
    'load_balancer'  => 'Rackspace::LoadBalancer',
    'metrics'        => 'Rackspace::Metrics',
    'monitoring'     => 'Rackspace::Monitoring',
    'networks'       => 'Rackspace::Networking',
    'orchestration'  => 'Rackspace::Orchestration',
    'queue'          => 'Rackspace::Queue'
  }


  @@auth_token      = nil
  @@service_catalog = nil
  @@tenant_id       = nil
  @@logger          = nil

  class << self
    def mocking?
      ENV['RACKSPACE_MOCK'] == 'true'
    end

    def auth_token
      @@auth_token
    end

    def tenant_id
      @@tenant_id
    end

    def service_catalog
      @@service_catalog ||= Peace::ServiceCatalog.load!
    end

    def auth_token=(token)
      @@auth_token = token
    end

    def tenant_id=(id)
      @@tenant_id = id
    end

    def service_catalog=(catalog)
      @@service_catalog = catalog
    end

    def logger
      @@logger ||= Peace::Logger.logger
    end
  end
end

Dir[File.expand_path "lib/rackspace/services/**/base.rb"].each{ |f| require_relative f }
