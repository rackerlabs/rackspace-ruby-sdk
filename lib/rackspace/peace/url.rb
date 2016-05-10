class Peace::URL

  attr_accessor :obj

  def initialize(obj)
    @obj = obj
  end

  def url
    class_based? ? collection_url : object_url
  end

  def collection_url
    if class_based?
      "#{service_url}/#{collection_name}"
    else
      path = @rackspace_api_path ? build_api_url! : collection_name
      "#{service_url}/#{path}"
    end
  end

  def object_url
    url = collection_url
    url << "/#{obj.id}" if obj.id
    url
  end

  private

  def class_based?
    obj.is_a?(Class)
  end

  # Provide the collection name based on the child (calling) class
  def collection_name
    if class_based?
      obj.to_s.tableize.split('/').last
    else
      obj.collection_name
    end
  end

  # Find the endpoint for a Service by name and region
  def service_url
    @service_url ||= Rackspace.service_catalog.url_for(service_name)
  end

  # Provide the service name based on the child (calling) class
  def service_name
    @service_name ||= obj.to_s.tableize.split('/')[1]
  end

  def build_api_url!(attrs)
    path = @rackspace_api_path.dup

    attrs.each do |(k,v)|
      if arr = /{{\w+}}/.match(path)
        fragment = arr[0]
        variable = fragment[2...-2]
        value    = obj.send("#{k}=", v)

        raise "Template error" unless value

        path.gsub!(fragment, value.to_s)
      end
    end

    path[0] == '/' ? path[1..-1] : path
  end

end
