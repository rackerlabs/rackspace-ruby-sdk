FactoryGirl.define do
  factory :monitoring_account, class: Rackspace::Monitoring::Account do
    id { SecureRandom.hex(25) }
		metadata ''
		webhook_token ''
  end
end
