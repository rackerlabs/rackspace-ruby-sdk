FactoryGirl.define do
  factory :content_caching, class: Rackspace::LoadBalancer::ContentCaching do
    enabled ''
  end
end
