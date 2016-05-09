## Notes
Compute::Volume must be accessed through Compute::Server.
Does this preclude it from the `Compute#resources`?
Also it seems that `reload` doesn't honor the url param interpolation.
`Rackspace::Compute.new.volumes` expects a `server_id` as a collection of Volumes is scoped to the parent Server.

`Rackspace::Compute.new.servers.first.volumes` will then have to be the only way to call volumes in Compute?

### This leads us to:
* Should I remove Volume from `Compute#resources`?
* Does this mean that `Compute::Server#resources` needs to exist?
  * We might be able to get this functionality for free if we extract out the `stub_resources` area.
* Should I just show nested resources in `Compute#resources`?


## TODO
- [ ] Fix associations (`Rackspace::Compute.new.servers.first.volumes.first.reload`)
- [ ] Consolidate the `Array-esque` models (`files` vs `file`)
- [ ] Figure out what attributes are required?

## Finished
- [x] Leaky reflection with class vars in `Peace::Association`
- [x] Get resources (`Rackspace::Compute.new.servers`) callable.
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
