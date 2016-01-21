module Peace
end

Dir[File.expand_path "lib/beloved/peace/modules/*.rb"].each{ |f| require_relative f }
Dir[File.expand_path "lib/beloved/peace/*.rb"].each{ |f| require_relative f }
