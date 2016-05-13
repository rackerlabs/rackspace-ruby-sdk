class MonitoringController < Sinatra::Base
  post '/monitoring/agent_token/create' do
    respond_with :'monitoring/agent_token', :create
  end

  put '/monitoring/agent_token/update' do
    respond_with :'monitoring/agent_token', :update
  end

  delete '/monitoring/agent_token/destroy' do
    respond_with :'monitoring/agent_token', :destroy
  end

  get '/monitoring/agent_token/index' do
    respond_with :'monitoring/agent_token', :index
  end

  get '/monitoring/agent_token/show' do
    respond_with :'monitoring/agent_token', :show
  end

  post '/monitoring/alarm/create' do
    respond_with :'monitoring/alarm', :create
  end

  put '/monitoring/alarm/update' do
    respond_with :'monitoring/alarm', :update
  end

  delete '/monitoring/alarm/destroy' do
    respond_with :'monitoring/alarm', :destroy
  end

  get '/monitoring/alarm/index' do
    respond_with :'monitoring/alarm', :index
  end

  get '/monitoring/alarm/show' do
    respond_with :'monitoring/alarm', :show
  end

  post '/monitoring/alarms/create' do
    respond_with :'monitoring/alarms', :create
  end

  put '/monitoring/alarms/update' do
    respond_with :'monitoring/alarms', :update
  end

  delete '/monitoring/alarms/destroy' do
    respond_with :'monitoring/alarms', :destroy
  end

  get '/monitoring/alarms/index' do
    respond_with :'monitoring/alarms', :index
  end

  get '/monitoring/alarms/show' do
    respond_with :'monitoring/alarms', :show
  end

  post '/monitoring/check_type/create' do
    respond_with :'monitoring/check_type', :create
  end

  put '/monitoring/check_type/update' do
    respond_with :'monitoring/check_type', :update
  end

  delete '/monitoring/check_type/destroy' do
    respond_with :'monitoring/check_type', :destroy
  end

  get '/monitoring/check_type/index' do
    respond_with :'monitoring/check_type', :index
  end

  get '/monitoring/check_type/show' do
    respond_with :'monitoring/check_type', :show
  end

  post '/monitoring/check/create' do
    respond_with :'monitoring/check', :create
  end

  put '/monitoring/check/update' do
    respond_with :'monitoring/check', :update
  end

  delete '/monitoring/check/destroy' do
    respond_with :'monitoring/check', :destroy
  end

  get '/monitoring/check/index' do
    respond_with :'monitoring/check', :index
  end

  get '/monitoring/check/show' do
    respond_with :'monitoring/check', :show
  end

  post '/monitoring/checks/create' do
    respond_with :'monitoring/checks', :create
  end

  put '/monitoring/checks/update' do
    respond_with :'monitoring/checks', :update
  end

  delete '/monitoring/checks/destroy' do
    respond_with :'monitoring/checks', :destroy
  end

  get '/monitoring/checks/index' do
    respond_with :'monitoring/checks', :index
  end

  get '/monitoring/checks/show' do
    respond_with :'monitoring/checks', :show
  end

  post '/monitoring/data_point/create' do
    respond_with :'monitoring/data_point', :create
  end

  put '/monitoring/data_point/update' do
    respond_with :'monitoring/data_point', :update
  end

  delete '/monitoring/data_point/destroy' do
    respond_with :'monitoring/data_point', :destroy
  end

  get '/monitoring/data_point/index' do
    respond_with :'monitoring/data_point', :index
  end

  get '/monitoring/data_point/show' do
    respond_with :'monitoring/data_point', :show
  end

  post '/monitoring/data_points/create' do
    respond_with :'monitoring/data_points', :create
  end

  put '/monitoring/data_points/update' do
    respond_with :'monitoring/data_points', :update
  end

  delete '/monitoring/data_points/destroy' do
    respond_with :'monitoring/data_points', :destroy
  end

  get '/monitoring/data_points/index' do
    respond_with :'monitoring/data_points', :index
  end

  get '/monitoring/data_points/show' do
    respond_with :'monitoring/data_points', :show
  end

  post '/monitoring/entities/create' do
    respond_with :'monitoring/entities', :create
  end

  put '/monitoring/entities/update' do
    respond_with :'monitoring/entities', :update
  end

  delete '/monitoring/entities/destroy' do
    respond_with :'monitoring/entities', :destroy
  end

  get '/monitoring/entities/index' do
    respond_with :'monitoring/entities', :index
  end

  get '/monitoring/entities/show' do
    respond_with :'monitoring/entities', :show
  end

  post '/monitoring/entity/create' do
    respond_with :'monitoring/entity', :create
  end

  put '/monitoring/entity/update' do
    respond_with :'monitoring/entity', :update
  end

  delete '/monitoring/entity/destroy' do
    respond_with :'monitoring/entity', :destroy
  end

  get '/monitoring/entity/index' do
    respond_with :'monitoring/entity', :index
  end

  get '/monitoring/entity/show' do
    respond_with :'monitoring/entity', :show
  end

  post '/monitoring/metric/create' do
    respond_with :'monitoring/metric', :create
  end

  put '/monitoring/metric/update' do
    respond_with :'monitoring/metric', :update
  end

  delete '/monitoring/metric/destroy' do
    respond_with :'monitoring/metric', :destroy
  end

  get '/monitoring/metric/index' do
    respond_with :'monitoring/metric', :index
  end

  get '/monitoring/metric/show' do
    respond_with :'monitoring/metric', :show
  end

  post '/monitoring/metrics/create' do
    respond_with :'monitoring/metrics', :create
  end

  put '/monitoring/metrics/update' do
    respond_with :'monitoring/metrics', :update
  end

  delete '/monitoring/metrics/destroy' do
    respond_with :'monitoring/metrics', :destroy
  end

  get '/monitoring/metrics/index' do
    respond_with :'monitoring/metrics', :index
  end

  get '/monitoring/metrics/show' do
    respond_with :'monitoring/metrics', :show
  end

  post '/monitoring/notification/create' do
    respond_with :'monitoring/notification', :create
  end

  put '/monitoring/notification/update' do
    respond_with :'monitoring/notification', :update
  end

  delete '/monitoring/notification/destroy' do
    respond_with :'monitoring/notification', :destroy
  end

  get '/monitoring/notification/index' do
    respond_with :'monitoring/notification', :index
  end

  get '/monitoring/notification/show' do
    respond_with :'monitoring/notification', :show
  end


end