class Rackspace::Monitoring < Peace::Service

  has_resource :agent_token
  has_resource :alarm
  has_resource :alarms
  has_resource :check_type
  has_resource :check
  has_resource :checks
  has_resource :data_point
  has_resource :data_points
  has_resource :entities
  has_resource :entity
  has_resource :metric
  has_resource :metrics
  has_resource :notification

  def initialize
  end

end
