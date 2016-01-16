require "beloved/version"
require "beloved/peace/base"

module Beloved
  @@auth_token = nil

  def self.auth_token
    @@auth_token
  end

  def self.auth_token=(token)
    @@auth_token = token
  end
end

Dir[File.expand_path "lib/beloved/**/*.rb"].each{ |f| require_relative f }
