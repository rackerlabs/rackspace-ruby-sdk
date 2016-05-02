class Beloved::Storage::Account < Peace::Model
  attr_accessor :meta_temp_url_key, :container_count, :bytes_used, :object_count
  attr_alias :meta_temp_url_key, 'X-Account-Meta-Temp-Url-Key'
  attr_alias :container_count, 'X-Account-Container-Count'
  attr_alias :bytes_used, 'X-Account-Bytes-Used'
  attr_alias :object_count, 'X-Account-Object-Count'
end
