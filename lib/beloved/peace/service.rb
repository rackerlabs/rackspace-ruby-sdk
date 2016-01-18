class Peace::Service

  mattr_accessor :rackspace_name, :resources

  class << self
    def catalog_name(str)
      @@rackspace_name = str
    end

    def has_resource(klass_name)
      @@resources ||= []
      @@resources << klass_name
    end
  end

end
