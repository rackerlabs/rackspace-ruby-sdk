FactoryGirl.define do
  factory :view, class: Rackspace::Monitoring::View do
    entity { }
    checks [ ]
    alarms  [ ]
    latest_alarm_states [ ]
  end
end
