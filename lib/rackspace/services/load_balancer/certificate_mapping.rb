class Rackspace::LoadBalancer::CertificateMapping 
  include Peace::Model
  attr_accessor :id, :host_name, :certificate, :intermediate_certificate
end
