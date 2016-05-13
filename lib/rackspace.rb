require "rackspace/version"
require "rackspace/peace/base"
require 'pry'

require "backspace"

module Rackspace
  @@auth_token      = nil
  @@service_catalog = nil
  @@tenant_id       = nil

  class << self
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
  end
end

Dir[File.expand_path "lib/rackspace/services/**/base.rb"].each{ |f| require_relative f }
