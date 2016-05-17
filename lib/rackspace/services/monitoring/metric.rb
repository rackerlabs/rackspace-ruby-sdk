class Rackspace::Monitoring::Metric < Peace::Model
  attr_accessor :id, :check
  
  def cumulative_and_instantaneous_metrics; end
	def data_granularity; end
	def data_point_expiration; end
	def metrics_api_operations; end
end
