class CdnController < Sinatra::Base
  post '/cdn/flavor/create' do
    respond_with :'cdn/flavor', :create
  end

  put '/cdn/flavor/update' do
    respond_with :'cdn/flavor', :update
  end

  delete '/cdn/flavor/destroy' do
    respond_with :'cdn/flavor', :destroy
  end

  get '/cdn/flavor/index' do
    respond_with :'cdn/flavor', :index
  end

  get '/cdn/flavor/show' do
    respond_with :'cdn/flavor', :show
  end

  post '/cdn/service/create' do
    respond_with :'cdn/service', :create
  end

  put '/cdn/service/update' do
    respond_with :'cdn/service', :update
  end

  delete '/cdn/service/destroy' do
    respond_with :'cdn/service', :destroy
  end

  get '/cdn/service/index' do
    respond_with :'cdn/service', :index
  end

  get '/cdn/service/show' do
    respond_with :'cdn/service', :show
  end


end