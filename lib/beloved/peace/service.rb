class Peace::Service

  mattr_accessor :resources

  class << self
    def has_resource(klass_name)
      @@resources ||= []
      @@resources << klass_name
    end
  end
end
