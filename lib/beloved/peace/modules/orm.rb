module Peace::ORM

  def all
    @all ||= begin
      response = Peace::Request.get(collection_url)
      body = JSON.parse(response.body)
      objs = body[collection_name]
      objs ? objs.map{ |f| self.new(f) } : []
    end
  end

  def first
    all.first
  end

  def rackspace_api_path(str)
    @rackspace_api_path = str
  end

  def service_url
    @service_url ||= Beloved.service_catalog.url_for(service_name)
  end

  def service_name
    @service_name ||= self.to_s.tableize.split('/')[1]
  end

  def collection_url
    if @rackspace_api_path
      url = "#{service_url}/#{@rackspace_api_path}"
    else
      url = "#{service_url}/#{collection_name}"
    end

    url.gsub('.com//', '/')
  end

  def collection_name
    @collection_name ||= self.to_s.tableize.split('/').last
  end

end
