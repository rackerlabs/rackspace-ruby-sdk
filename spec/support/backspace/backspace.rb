require 'sinatra'

set :server, :thin
set :port, 7000

before do
  content_type 'application/json'
end
require_relative 'controllers/auto_scale_controller'
require_relative 'controllers/block_storage_controller'
require_relative 'controllers/cdn_controller'
require_relative 'controllers/compute_controller'
require_relative 'controllers/databases_controller'
require_relative 'controllers/dns_controller'
require_relative 'controllers/files_controller'
require_relative 'controllers/load_balancers_controller'
require_relative 'controllers/monitoring_controller'
require_relative 'controllers/networks_controller'
require_relative 'controllers/orchestration_controller'
require_relative 'controllers/queues_controller'
use AutoScaleController
use BlockStorageController
use CdnController
use ComputeController
use DatabaseController
use DnController
use FileController
use LoadBalancerController
use MonitoringController
use NetworkController
use OrchestrationController
use QueueController
