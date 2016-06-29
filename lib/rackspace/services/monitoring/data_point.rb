class Rackspace::Monitoring::DataPoint 
  include Peace::Model
  attr_accessor :id, :num_points, :average, :variance, :min, :max, :timestamp, :metric
  attr_with_alias :num_points, :numPoints
end
