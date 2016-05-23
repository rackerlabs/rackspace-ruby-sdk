FactoryGirl.define do
  factory :key_pair, class: Rackspace::Compute::KeyPair do
    id { SecureRandom.hex(25) }
		public_key ''
		private_key ''
		user_id { SecureRandom.hex(25) }
		fingerprint ''
		name ''
  end
end
