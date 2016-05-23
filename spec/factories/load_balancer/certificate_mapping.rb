FactoryGirl.define do
  factory :certificate_mapping, class: Rackspace::LoadBalancer::CertificateMapping do
    id { SecureRandom.hex(25) }
		host_name ''
		certificate ''
		intermediate_certificate ''
  end
end
