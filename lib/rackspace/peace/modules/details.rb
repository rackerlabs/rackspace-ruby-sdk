module Peace::Details
  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    @@has_more_info = false

    def has_more_info
      @@has_more_info = true
    end

    def details
      if @@has_more_info
        # TODO: Flesh out how to deal with `detail` routes?
      else
      end
    end
  end
end
