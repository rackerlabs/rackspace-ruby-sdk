class Beloved::Storage::Directory < Peace::Model
  attr_accessor :id, :bytes, :count, :cdn_name
  attr_alias :bytes, 'X-Container-Bytes-Used'
  attr_alias :count, 'X-Account-Object-Count'

  request :get_container
  request :get_containers
  request :delete_container
  request :head_container
  request :head_containers
  request :put_container
end
