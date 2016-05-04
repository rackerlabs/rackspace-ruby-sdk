class Rackspace::DNS::Record < Peace::Model
  include Peace::Details

  attr_accessor :id, :name, :value, :ttl, :type, :priority, :created, :updated

  action :remove_records
  action :add_records
end
