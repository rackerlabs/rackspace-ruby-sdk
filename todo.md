## TODO
- [ ] Get resources (`Rackspace::Compute.new.servers`) callable.
- [ ] Consolidate the `Array-esque` models (`files` vs `file`)
- [ ] Figure out what attributes are required?

## Finished
- [x] Stub out existing Fog request classes? How do I want to handle this?
- [x] Service discovery? `Peace::Service.available_services`
- [x] Handle attribute names like `OS-DCF:diskConfig`
- [x] Need a way to require attributes
- [x] Add VCR?
- [x] Flesh out `has_many`, `belongs_to`
- [x] Log authentication calls (keep eye on caching Identity)
- [x] How do we handle associations? (`GET /servers/{server_id}/os-volume_attachments`)
- [x] Model needs a way to specify path fragment (ie, `/os-keypairs`)
- [x] Add Peace::Model.url (tack id on end if exists)
- [x] Enumerate child resources (from Peace::Service)
- [x] Need Peace::Model#url reflection based on service_catalog URL
- [x] ENV var based authentication over ~/.fog
- [x] Add resource name inflection to Peace::Model#all JSON parsing
- [x] Use region to get a resource URL from ServiceCatalog
- [x] Find and set the tenant_id

## Meh
- [ ] Handle URL generation between service/resource in a cleaner way
  - [ ] Model needs to know what Service it belongs on
- [ ] Figure out a better way to find all attributes and set in models ('detail' routes?) -- Direct `attr_accessor` is far easier and more grokkable.
