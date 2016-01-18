require 'active_support/all'

class Peace::Model

  class << self
    def all
      response = Peace::Request.get(collection_url)
      body = JSON.parse(response.body)
      body[collection_name].map{ |f| self.new(f) }
    end

    def first
      all.first
    end

    def collection_url
      @collection_url ||= begin
        base_url = Beloved.service_catalog.url_for(service_name)
        "#{base_url}/#{collection_name}"
      end
    end

    private

    def service_name
      @service_name ||= self.to_s.tableize.split('/')[1]
    end

    def collection_name
      @collection_name ||= self.to_s.tableize.split('/').last
    end
  end


  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

end
