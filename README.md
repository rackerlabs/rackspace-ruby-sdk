# Rackspace Ruby SDK

### THIS IS A WORK IN PROGRESS!

### Usage:
  * Load a console with this gem: `rake console`
  * See what services you have access to: `Peace::Service.available_services`
  * Generic `ActiveModel-esque` accessors, like `#all` and `#first`, etc:
    * `Rackspace::Compute::Server.all`
    * `Rackspace::Compute::Flavor.all`
    * `Rackspace::Compute::Image.all`
    * `Rackspace::Compute::KeyPair.all`
    * `Rackspace::Compute::Volume.all`
