class Rackspace::Monitoring < Peace::Service

  has_resource :account
  has_resource :agent
  has_resource :agent_host_information
  has_resource :agent_target
  has_resource :agent_token
  has_resource :alarm
  has_resource :alarm_example
  has_resource :alarm_notification_history
  has_resource :changelog
  has_resource :check
  has_resource :check_type
  has_resource :data_point
  has_resource :entity
  has_resource :metric
  has_resource :monitoring_zone
  has_resource :notification
  has_resource :notification_plan
  has_resource :notification_type
  has_resource :suppression
  has_resource :suppression_log
  has_resource :view

  def initialize
  end

end
