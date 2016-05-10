class Peace::URL

  attr_accessor :obj

  def initialize(obj)
    @obj = obj
  end

  def url
    u = collection_url
    u << "/#{obj.id}" if obj.id
    u
  end

  def collection_url
    if class_level?
      path = obj.collection_name
    else
      if obj.custom_api_path
        path = build_api_path
      else
        path = obj.collection_name
      end
    end

    "#{service_url}/#{path}"
  end


  private

  def class_level?
    !(obj.class.superclass == Peace::Model)
  end

  # Provide the collection name based on the child (calling) class
  def collection_name
    if class_level?
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

  def build_api_path
    path = obj.custom_api_path.dup

    /({{\w+}})/.match(path) do |m|
      fragment = m[0]
      variable = fragment[2...-2]
      value    = obj.send(variable)
      binding.pry

      raise "Template error" unless value

      path.gsub!(fragment, value.to_s)
    end

    path[0] == '/' ? path[1..-1] : path
  end

end
