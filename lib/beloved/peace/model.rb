require 'active_support/all'

class Peace::Model
  @rackspace_api_path = nil

  class << self

    def all
      @all ||= begin
        response = Peace::Request.get(collection_url)
        body = JSON.parse(response.body)
        objs = body[collection_name]
        objs ? objs.map{ |f| self.new(f) } : []
      end
    end

    def rackspace_api_path(str)
      @rackspace_api_path = str
    end

    def first
      all.first
    end

    def service_url
      @service_url ||= Beloved.service_catalog.url_for(service_name)
    end

    def service_name
      @service_name ||= self.to_s.tableize.split('/')[1]
    end

    def collection_url
      if @rackspace_api_path
        "#{service_url}/#{@rackspace_api_path}"
      else
        "#{service_url}/#{collection_name}"
      end
    end

    def collection_name
      @collection_name ||= self.to_s.tableize.split('/').last
    end
  end


  def initialize(hash={})
    hash.each{ |k,v| self.send("#{k}=", v) }
  end

  def url
    url = self.class.collection_url
    url << "/#{id}" if self.id
    url
  end

end
