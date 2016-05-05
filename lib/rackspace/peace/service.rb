class Peace::Service

  mattr_accessor :id, :resources

  class << self
    def has_resource(klass_name)
      klass = load_resource!(klass_name)
      name  = service_name.to_sym

      @@resources       ||= {}
      @@resources[name] ||= []
      @@resources[name] << klass_name
    end

    def available_services
      @available_services ||= Peace::ServiceCatalog.load!.available_services
    end

    def new(*args, &block)
      super
      stub_resources!
      self
    end

    def resources
      service_name = self.to_s.demodulize.downcase.to_sym
      @@resources[service_name]
    end


    private

    def load_resource!(klass_name)
      base = "#{Dir.pwd}/lib/rackspace/services"
      require "#{base}/#{service_name}/#{klass_name}.rb"
    end

    def stub_resources!
      @@resources[service_name.to_sym].each do |name|
        self.class.send(:define_method, name.to_s.pluralize, lambda {
          modpath = self.to_s.split('::')
          modpath << name.to_s.classify # Inject :name classname
          klass = modpath.join('::').constantize
          klass.all
        })
      end
    end

    def service_name
      service_name = self.to_s.demodulize.tableize.singularize
      service_name = "dns" if service_name == "dn"
      service_name = "load_balancers" if service_name == "load_balancer"
      service_name = "queues" if service_name == "queue"
      service_name
    end
  end

end
