FactoryGirl.define do
  factory :ssl_certificate, class: Rackspace::Cdn::SslCertificate do
    cert_type ''
		domain_name ''
		flavor_id ''
		project_id ''
  end
end
