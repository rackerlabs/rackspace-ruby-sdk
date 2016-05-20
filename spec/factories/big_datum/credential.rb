FactoryGirl.define do
  factory :big_datum_credential, class: Rackspace::BigDatum::Credential do
    ssh_keys ''
		cloud_files ''
  end
end
