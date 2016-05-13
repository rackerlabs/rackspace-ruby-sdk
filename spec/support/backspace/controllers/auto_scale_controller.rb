class AutoScaleController < Sinatra::Base
  post '/auto_scale/group_config/create' do
    respond_with :'auto_scale/group_config', :create
  end

  put '/auto_scale/group_config/update' do
    respond_with :'auto_scale/group_config', :update
  end

  delete '/auto_scale/group_config/destroy' do
    respond_with :'auto_scale/group_config', :destroy
  end

  get '/auto_scale/group_config/index' do
    respond_with :'auto_scale/group_config', :index
  end

  get '/auto_scale/group_config/show' do
    respond_with :'auto_scale/group_config', :show
  end

  post '/auto_scale/group/create' do
    respond_with :'auto_scale/group', :create
  end

  put '/auto_scale/group/update' do
    respond_with :'auto_scale/group', :update
  end

  delete '/auto_scale/group/destroy' do
    respond_with :'auto_scale/group', :destroy
  end

  get '/auto_scale/group/index' do
    respond_with :'auto_scale/group', :index
  end

  get '/auto_scale/group/show' do
    respond_with :'auto_scale/group', :show
  end

  post '/auto_scale/launch_config/create' do
    respond_with :'auto_scale/launch_config', :create
  end

  put '/auto_scale/launch_config/update' do
    respond_with :'auto_scale/launch_config', :update
  end

  delete '/auto_scale/launch_config/destroy' do
    respond_with :'auto_scale/launch_config', :destroy
  end

  get '/auto_scale/launch_config/index' do
    respond_with :'auto_scale/launch_config', :index
  end

  get '/auto_scale/launch_config/show' do
    respond_with :'auto_scale/launch_config', :show
  end

  post '/auto_scale/policy/create' do
    respond_with :'auto_scale/policy', :create
  end

  put '/auto_scale/policy/update' do
    respond_with :'auto_scale/policy', :update
  end

  delete '/auto_scale/policy/destroy' do
    respond_with :'auto_scale/policy', :destroy
  end

  get '/auto_scale/policy/index' do
    respond_with :'auto_scale/policy', :index
  end

  get '/auto_scale/policy/show' do
    respond_with :'auto_scale/policy', :show
  end

  post '/auto_scale/webhook/create' do
    respond_with :'auto_scale/webhook', :create
  end

  put '/auto_scale/webhook/update' do
    respond_with :'auto_scale/webhook', :update
  end

  delete '/auto_scale/webhook/destroy' do
    respond_with :'auto_scale/webhook', :destroy
  end

  get '/auto_scale/webhook/index' do
    respond_with :'auto_scale/webhook', :index
  end

  get '/auto_scale/webhook/show' do
    respond_with :'auto_scale/webhook', :show
  end


end