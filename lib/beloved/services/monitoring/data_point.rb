class Beloved::Monitoring::DataPoint < Peace::Model
  attr_accessor :id, :num_points, :average, :variance, :min, :max, :timestamp, :metric
  attr_alias :num_points, :numPoints
end
