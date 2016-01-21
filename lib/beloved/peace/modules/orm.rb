module Peace::ORM

  def all(attrs={})
    @all ||= begin
      response = Peace::Request.get(collection_url(attrs))
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

  def collection_url(attrs={})
    path = (@rackspace_api_path && attrs) ? build_api_url!(attrs) : collection_name
    "#{service_url}/#{path}"
  end

  def collection_name
    @collection_name ||= self.to_s.tableize.split('/').last
  end

  def url
    url = self.class.collection_url
    url << "/#{id}" if self.id
    url
  end

  private

  def build_api_url!(attrs)
    path = @rackspace_api_path.dup

    attrs.each do |(k,v)|
      if arr = /{{\w+}}/.match(path)
        fragment = arr[0]
        variable = fragment[2...-2]
        value    = self.send("#{k}=", v)

        raise "Template error" unless value

        path.gsub!(fragment, value.to_s)
      end
    end

    path[0] == '/' ? path[1..-1] : path
  end

end
