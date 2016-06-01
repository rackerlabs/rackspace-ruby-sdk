module Peace
end

Dir[File.expand_path "lib/peace/modules/*.rb"].each{ |f| require_relative f }
Dir[File.expand_path "lib/peace/*.rb"].each{ |f| require_relative f }
