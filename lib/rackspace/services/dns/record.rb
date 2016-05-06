class Rackspace::DNS::Record < Peace::Model
  include Peace::Details

  attr_accessor :id, :name, :value, :ttl, :type, :priority, :created, :updated

  def remove_records; end
  def add_records; end
end
