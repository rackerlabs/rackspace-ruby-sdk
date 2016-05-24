FactoryGirl.define do
  factory :big_data_credential, class: Rackspace::BigDatum::Credential do
    ssh_keys ''
		cloud_files ''
  end
end
