FactoryGirl.define do
  factory :configuration_parameter, class: Rackspace::Database::ConfigurationParameter do
    max 1
    min 0
    name ''
    restart_required false
    type ''
  end
end
