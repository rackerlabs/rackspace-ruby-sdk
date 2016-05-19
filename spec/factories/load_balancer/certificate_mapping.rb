FactoryGirl.define do
  factory :certificate_mapping, class: Rackspace::LoadBalancer::CertificateMapping do
    id ''
		host_name ''
		certificate ''
		intermediate_certificate ''
  end
end
