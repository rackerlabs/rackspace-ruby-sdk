FactoryGirl.define do
  factory :key_pair, class: Rackspace::Compute::KeyPair do
    id ''
		public_key ''
		private_key ''
		user_id ''
		fingerprint ''
		name ''
  end
end
