class Rackspace::Storage::Account < Peace::Model
  attr_accessor :id, :meta_temp_url_key, :container_count, :bytes_used, :object_count
  attr_with_alias :meta_temp_url_key, 'X-Account-Meta-Temp-Url-Key'
  attr_with_alias :container_count, 'X-Account-Container-Count'
  attr_with_alias :bytes_used, 'X-Account-Bytes-Used'
  attr_with_alias :object_count, 'X-Account-Object-Count'
  
  def show_account_details_and_containers; end
  def create_or_update_account_metadata; end
  def get_account_metadata; end
  def delete_account_metadata; end
end
