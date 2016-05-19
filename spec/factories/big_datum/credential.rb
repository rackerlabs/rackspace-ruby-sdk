FactoryGirl.define do
  factory :credential, class: Rackspace::BigDatum::Credential do
    ssh_keys ''
		cloud_files ''
  end
end
