## Notes
How far do I want to take this url nesting, etc? If I disregard that aspect then I'm mocking/stubbing even more. I don't want to write a chunk of code just to get it to work with the mock server? Seems fruitless?

Am I taking this ActiveRecord clone too far? Why do we need associations? Maybe make the ugly parts then backfill/cover with a clean DSL? So much of the complexity is around the nesting/object reflection.

I have to find the right level of automagic vs configuration. Finding that configuration is winning.

## TODO
- [ ] Consolidate the `Array-esque` models (`files` vs `file`)
- [ ] Figure out what attributes are required?

## Finished
- [x] Create a mocked ServiceCatalog to go with the server
- [x] Create mock server
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
