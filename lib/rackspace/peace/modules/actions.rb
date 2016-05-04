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



# INDEX: 52
# SHOW: 58
# DESTROY: 37
# UPDATE: 16
# CREATE: 31

# 77% of all calls are CRUD-based.


# s = Rackspace::Compute::Server.new
# s.name = "meh"
# s.save
# s.destroy
#
# Rackspace::Compute::Server.all
# Rackspace::Compute::Server.find
# Rackspace::Compute::Server.first
#
# c = Rackspace::Compute.new
# c.servers #=> []
# c.servers.first.networks
