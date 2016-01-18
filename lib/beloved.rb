require "beloved/version"
require "beloved/peace/base"

module Beloved
  @@auth_token      = nil
  @@service_catalog = nil

  class << self
    def auth_token
      @@auth_token
    end

    def service_catalog
      @@service_catalog ||= Peace::ServiceCatalog.load!
    end

    def auth_token=(token)
      @@auth_token = token
    end

    def service_catalog=(catalog)
      @@service_catalog = catalog
    end
  end
end

Dir[File.expand_path "lib/beloved/**/*.rb"].each{ |f| require_relative f }
