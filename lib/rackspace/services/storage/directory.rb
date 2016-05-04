class Rackspace::Storage::Directory < Peace::Model
  attr_accessor :id, :bytes, :count, :cdn_name
  attr_with_alias :bytes, 'X-Container-Bytes-Used'
  attr_with_alias :count, 'X-Account-Object-Count'

  action :head_container
  action :head_containers
  action :put_container
end
