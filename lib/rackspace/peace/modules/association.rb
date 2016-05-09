module Peace::Association
  def self.included(klass)
    klass.extend ClassMethods
  end

  def available_resources
    self.class.available_resources
  end

  module ClassMethods
    @@has_many   = {}
    @@belongs_to = {}

    def belongs_to(sym, mapping)
      @@belongs_to[self.resource_name.to_sym] ||= []
      @@belongs_to[self.resource_name.to_sym] << sym

      define_method sym, lambda {
        modpath     = self.class.to_s.split('::')
        modpath[-1] = sym.to_s.classify # Inject :sym classname
        klass       = modpath.join('::').constantize

        klass.find(self.send(mapping))
      }
    end

    def has_many(sym, mapping)
      @@has_many[self.resource_name.to_sym] ||= []
      @@has_many[self.resource_name.to_sym] << sym

      define_method sym, lambda {
        modpath     = self.class.to_s.split('::')
        modpath[-1] = sym.to_s.classify # Inject :sym classname
        klass       = modpath.join('::').constantize

        hash = mapping.inject({}) do |map, (k,v)|
          map.merge({"#{k}": self.send(v)})
        end

        klass.all(hash)
      }
    end

    def available_resources
      hm = @@has_many[self.resource_name.to_sym] ||= []
      bt = @@belongs_to[self.resource_name.to_sym] ||= []
      hm + bt
    end

    def api_requires(*args)
      args.each{ |sym| self.class_attribute sym }
    end
  end
end
