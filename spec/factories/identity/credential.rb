FactoryGirl.define do
  factory :identity_credential, class: Rackspace::Identity::Credential do
    id { SecureRandom.hex(25) }
		username ''
  end
end
