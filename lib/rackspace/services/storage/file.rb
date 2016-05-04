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

  action :copy_object
  action :delete_static_large_object
  action :delete_multiple_objects
  action :get_object_https_url
  action :get_object_http_url
  action :head_object
  action :put_object
  action :put_object_manifest
  action :put_dynamic_obj_manifest
  action :put_static_obj_manifest
  action :post_set_meta_temp_url_key
  action :extract_archive
end
