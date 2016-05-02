class Beloved::Storage::File < Peace::Model
  attr_accessor :content_length, :content_type, :content_disposition, :etag,
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
end
