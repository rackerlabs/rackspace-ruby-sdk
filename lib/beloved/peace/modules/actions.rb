module Peace::Actions
  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    @@requests = []

    def request(name)
      @@requests << name
    end
  end
end
