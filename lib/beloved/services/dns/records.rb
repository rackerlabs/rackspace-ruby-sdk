class Beloved::DNS::Records < Peace::Model
  attr_accessor :id, :zone, :total_entries
  attr_alias :total_entries, :totalEntries
end
