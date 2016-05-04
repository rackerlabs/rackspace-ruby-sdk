class Beloved::Storage::File < Peace::Model
  attr_accessor :id, :content_length, :content_type, :content_disposition, :etag,
    :last_modified, :access_control_allow_origin, :origin, :content_encoding,
    :delete_at, :delete_after

  attr_alias :content_length, 'Content-Length'
  attr_alias :content_type, 'Content-Type'
  attr_alias :bytes, 'Content-Length'
  attr_alias :bytes, 'Content-Length'
  attr_alias :content_disposition, 'Content-Disposition'
  attr_alias :etag, 'Etag'
  attr_alias :last_modified, 'Last-Modified'
  attr_alias :access_control_allow_origin, 'Access-Control-Allow-Origin'
  attr_alias :content_encoding, 'Content-Encoding'
  attr_alias :delete_at, 'X-Delete-At'
  attr_alias :delete_after, 'X-Delete-After'

  request :copy_object
  request :delete_object
  request :delete_static_large_object
  request :delete_multiple_objects
  request :get_object
  request :get_object_https_url
  request :get_object_http_url
  request :head_object
  request :put_object
  request :put_object_manifest
  request :put_dynamic_obj_manifest
  request :put_static_obj_manifest
  request :post_set_meta_temp_url_key
  request :extract_archive
end
