class Rackspace::DNS::Record < Peace::Model
  attr_accessor :id, :name, :value, :ttl, :type, :priority, :created, :updated
  
  request :list_records
  request :list_record_details
  request :modify_record
  request :remove_record
  request :remove_records
  request :add_records
  request :create_ptr_record
  request :list_ptr_records
  request :modify_ptr_record
  request :remove_ptr_record
end
