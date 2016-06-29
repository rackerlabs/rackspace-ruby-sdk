class Rackspace::Feed::CloudQueue 
  include Peace::Model
	attr_accessor :type, :category, :content, :id, :link, :published, :title, :updated

	def events; end
	def find; end
end
