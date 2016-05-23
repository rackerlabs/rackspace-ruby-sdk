FactoryGirl.define do
  factory :snapshot, class: Rackspace::BlockStorage::Snapshot do
    id { SecureRandom.hex(25) }
		created_at ''
		state ''
		display_name ''
		display_description ''
  end
end
