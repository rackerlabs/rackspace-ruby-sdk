class Rackspace::BigDatum::Script 
  include Peace::Model
	attr_accessor :created, :id, :is_public, :links, :name, :type, :updated, :url

	class << self
		def all_scripts; end
	end
end
