# Rackspace Ruby SDK

### THIS IS A WORK IN PROGRESS!

### Authorization:
  - `ENV['RS_API_KEY']`
  - `ENV['RS_USERNAME']`
  - `ENV['RS_REGION_NAME']`

### Usage:
  - Load a console with this gem: `rake console`
  - CLI commands: `rackspace`
    - See all Compute flavors: `rackspace compute_flavors`
  - See what services you have access to: `Peace::Service.available_services`
  - Generic `ActiveModel-esque` accessors, like `#all` and `#first`, etc:
    - `Rackspace::Compute::Server.all`
    - `Rackspace::Compute::Flavor.all`
    - `Rackspace::Compute::Image.all`
    - `Rackspace::Compute::KeyPair.all`
    - `Rackspace::Compute::Volume.all`
