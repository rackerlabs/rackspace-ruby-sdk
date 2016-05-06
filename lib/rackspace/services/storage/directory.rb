class Rackspace::Storage::Directory < Peace::Model
  attr_accessor :id, :bytes, :count, :cdn_name
  attr_with_alias :bytes, 'X-Container-Bytes-Used'
  attr_with_alias :count, 'X-Account-Object-Count'

  def head_container; end
  def head_containers; end
  def put_container; end
end
