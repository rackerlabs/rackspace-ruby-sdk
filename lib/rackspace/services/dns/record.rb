class Rackspace::DNS::Record < Peace::Model
  attr_accessor :id, :name, :value, :ttl, :type, :priority, :created, :updated

  action :remove_records
  action :add_records
end
