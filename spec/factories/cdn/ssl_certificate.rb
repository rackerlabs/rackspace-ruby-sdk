FactoryGirl.define do
  factory :ssl_certificate, class: Rackspace::CDN::SslCertificate do
    cert_type ''
		domain_name ''
		flavor_id { SecureRandom.hex(25) }
		project_id { SecureRandom.hex(25) }
  end
end
