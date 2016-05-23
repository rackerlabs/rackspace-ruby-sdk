FactoryGirl.define do
  factory :monitoring_zone, class: Rackspace::Monitoring::MonitoringZone do
    country_code ''
		id { SecureRandom.hex(25) }
		label ''
		source_ips ''
  end
end
