class Peace::Service

  mattr_accessor :resources

  class << self
    def has_resource(klass_name)
      @@resources ||= []
      load_service!(klass_name)
      @@resources << klass_name
    end

    private

    def load_service!(klass_name)
      folder = self.to_s.demodulize.tableize.singularize
      folder = "dns" if folder == "dn"
      folder = "load_balancers" if folder == "load_balancer"
      folder = "queues" if folder == "queue"
      path   = "#{Dir.pwd}/lib/beloved/services/#{folder}/#{klass_name}.rb"
      require path
    end
  end
end
