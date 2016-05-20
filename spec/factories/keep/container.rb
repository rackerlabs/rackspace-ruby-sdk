FactoryGirl.define do
  factory :keep_container, class: Rackspace::Keep::Container do
    consumers ''
		container_ref ''
		created ''
		name ''
		secret_refs ''
		status ''
		type ''
		updated ''
  end
end
