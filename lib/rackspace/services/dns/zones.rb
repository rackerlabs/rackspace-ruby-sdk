class Rackspace::DNS::Zones < Peace::Model
  attr_accessor :id, :total_entries
  attr_with_alias :total_entries, :totalEntries
end
