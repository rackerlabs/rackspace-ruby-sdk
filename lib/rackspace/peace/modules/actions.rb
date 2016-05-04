module Peace::Actions
  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    @@actions = []

    def action(name)
      @@actions << name
      # TODO: Flesh out custom (non-CRUD) actions
    end
  end
end
