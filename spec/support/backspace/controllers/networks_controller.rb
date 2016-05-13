class NetworkController < Sinatra::Base
  post '/networks/network/create' do
    respond_with :'networks/network', :create
  end

  put '/networks/network/update' do
    respond_with :'networks/network', :update
  end

  delete '/networks/network/destroy' do
    respond_with :'networks/network', :destroy
  end

  get '/networks/network/index' do
    respond_with :'networks/network', :index
  end

  get '/networks/network/show' do
    respond_with :'networks/network', :show
  end

  post '/networks/port/create' do
    respond_with :'networks/port', :create
  end

  put '/networks/port/update' do
    respond_with :'networks/port', :update
  end

  delete '/networks/port/destroy' do
    respond_with :'networks/port', :destroy
  end

  get '/networks/port/index' do
    respond_with :'networks/port', :index
  end

  get '/networks/port/show' do
    respond_with :'networks/port', :show
  end

  post '/networks/security_group_rule/create' do
    respond_with :'networks/security_group_rule', :create
  end

  put '/networks/security_group_rule/update' do
    respond_with :'networks/security_group_rule', :update
  end

  delete '/networks/security_group_rule/destroy' do
    respond_with :'networks/security_group_rule', :destroy
  end

  get '/networks/security_group_rule/index' do
    respond_with :'networks/security_group_rule', :index
  end

  get '/networks/security_group_rule/show' do
    respond_with :'networks/security_group_rule', :show
  end

  post '/networks/security_group/create' do
    respond_with :'networks/security_group', :create
  end

  put '/networks/security_group/update' do
    respond_with :'networks/security_group', :update
  end

  delete '/networks/security_group/destroy' do
    respond_with :'networks/security_group', :destroy
  end

  get '/networks/security_group/index' do
    respond_with :'networks/security_group', :index
  end

  get '/networks/security_group/show' do
    respond_with :'networks/security_group', :show
  end

  post '/networks/subnet/create' do
    respond_with :'networks/subnet', :create
  end

  put '/networks/subnet/update' do
    respond_with :'networks/subnet', :update
  end

  delete '/networks/subnet/destroy' do
    respond_with :'networks/subnet', :destroy
  end

  get '/networks/subnet/index' do
    respond_with :'networks/subnet', :index
  end

  get '/networks/subnet/show' do
    respond_with :'networks/subnet', :show
  end


end