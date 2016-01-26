module Peace::Association
  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    @@has_many   = []
    @@belongs_to = []

    def belongs_to(sym, mapping)
      @@belongs_to << sym

      define_method sym, lambda {
        modpath     = self.class.to_s.split('::')
        modpath[-1] = sym.to_s.classify # Inject :sym classname
        klass       = modpath.join('::').constantize

        klass.find(self.send(mapping))
      }
    end

    def has_many(sym, mapping)
      @@has_many << sym

      define_method sym, lambda {
        modpath     = self.class.to_s.split('::')
        modpath[-1] = sym.to_s.classify # Inject :sym classname
        klass       = modpath.join('::').constantize
        hash        = mapping.inject({}){ |map, (k,v)| map.merge({"#{k}": self.send(v)}) }

        klass.all(hash)
      }
    end

    def api_requires(*args)
      args.each{ |sym| self.class_attribute sym }
    end
  end


  module InstanceMethods
  end
end
