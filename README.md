# Beloved

## TODO
- [ ] Flesh out `has_many`, `belongs_to`
- [ ] Add VCR?

## Meh
- [ ] Handle URL generation between service/resource in a cleaner way
  - [ ] Model needs to know what Service it belongs on

## Finished
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

## HOWTO
- Load nested resources: `Beloved::Compute::Volume.all(server_id: server.id)`
