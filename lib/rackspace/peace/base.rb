module Peace
end

Dir[File.expand_path "lib/rackspace/peace/modules/*.rb"].each{ |f| require_relative f }
Dir[File.expand_path "lib/rackspace/peace/*.rb"].each{ |f| require_relative f }
