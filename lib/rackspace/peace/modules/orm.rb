module Peace::ORM

  def self.included(klass)
    klass.extend ClassMethods
  end

  def save
    method   = self.id.present? ? 'put' : 'post'
    response = Peace::Request.send(method, self)
    self.send(:refresh!, response)
  end

  def destroy
    Peace::Request.delete(self)
  end

  def reload
    response = Peace::Request.get(self.url)
    self.send(:refresh!, response)
  end

  # Provide the URL based on object state
  def url
    url = self.class.collection_url
    url << "/#{id}" if self.id
    url
  end

  def as_json(options=nil)
    options = { root: true }
    super(options)
  end


  module ClassMethods

    def all(attrs={})
      response = Peace::Request.get(collection_url(attrs))
      objs     = response[@json_key_name || collection_name]

      [*objs].map do |f|
        o = self.new(f)
        o.reload if ENV['PREFETCH'] == "true"
        o
      end
    end

    # Find a particular object
    def find(id)
      all.find{ |o| o.id == id }
    end

    # Get the first object
    def first
      all.first
    end

    def create(options={})
      self.new(options).save
    end

    # A Mustache-inspired templated string that overrides
    # default naming conventions and injects nested URL variables.
    def rackspace_api_path(str)
      @rackspace_api_path = str
    end

    # A symbol that describes the JSON key name where the object
    # data is stored in the Rackspace API payload.
    def json_key_name(sym)
      @json_key_name = sym.to_s
    end

    # Find the endpoint for a Service by name and region
    def service_url
      @service_url ||= Rackspace.service_catalog.url_for(service_name)
    end

    # Provide the service name based on the child (calling) class
    def service_name
      @service_name ||= self.to_s.tableize.split('/')[1]
    end

    # Provide full enpoint URL for a collection of objects
    def collection_url(attrs={})
      path = (@rackspace_api_path && attrs) ? build_api_url!(attrs) : collection_name
      "#{service_url}/#{path}"
    end

    # Provide the collection name based on the child (calling) class
    def collection_name
      @collection_name ||= self.to_s.tableize.split('/').last
    end

    def attr_with_alias(original, *others)
      [*others].each do |o|
        attr_accessor original
        new_writer      = "#{o}="
        original_writer = "#{original}="
        alias_method(o, original) if method_defined? original
        alias_method(new_writer, original_writer) if method_defined? original_writer
      end
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
end