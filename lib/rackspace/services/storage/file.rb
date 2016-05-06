class Rackspace::Storage::File < Peace::Model
  attr_accessor :id, :content_length, :content_type, :content_disposition, :etag,
    :last_modified, :access_control_allow_origin, :origin, :content_encoding,
    :delete_at, :delete_after

  attr_with_alias :content_length, 'Content-Length'
  attr_with_alias :content_type, 'Content-Type'
  attr_with_alias :bytes, 'Content-Length'
  attr_with_alias :bytes, 'Content-Length'
  attr_with_alias :content_disposition, 'Content-Disposition'
  attr_with_alias :etag, 'Etag'
  attr_with_alias :last_modified, 'Last-Modified'
  attr_with_alias :access_control_allow_origin, 'Access-Control-Allow-Origin'
  attr_with_alias :content_encoding, 'Content-Encoding'
  attr_with_alias :delete_at, 'X-Delete-At'
  attr_with_alias :delete_after, 'X-Delete-After'

  def copy_object; end
  def delete_static_large_object; end
  def delete_multiple_objects; end
  def get_object_https_url; end
  def get_object_http_url; end
  def head_object; end
  def put_object; end
  def put_object_manifest; end
  def put_dynamic_obj_manifest; end
  def put_static_obj_manifest; end
  def post_set_meta_temp_url_key; end
  def extract_archive; end
end
