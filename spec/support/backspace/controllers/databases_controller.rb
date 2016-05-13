class DatabaseController < Sinatra::Base
  post '/databases/database/create' do
    respond_with :'databases/database', :create
  end

  put '/databases/database/update' do
    respond_with :'databases/database', :update
  end

  delete '/databases/database/destroy' do
    respond_with :'databases/database', :destroy
  end

  get '/databases/database/index' do
    respond_with :'databases/database', :index
  end

  get '/databases/database/show' do
    respond_with :'databases/database', :show
  end

  post '/databases/flavor/create' do
    respond_with :'databases/flavor', :create
  end

  put '/databases/flavor/update' do
    respond_with :'databases/flavor', :update
  end

  delete '/databases/flavor/destroy' do
    respond_with :'databases/flavor', :destroy
  end

  get '/databases/flavor/index' do
    respond_with :'databases/flavor', :index
  end

  get '/databases/flavor/show' do
    respond_with :'databases/flavor', :show
  end

  post '/databases/instance/create' do
    respond_with :'databases/instance', :create
  end

  put '/databases/instance/update' do
    respond_with :'databases/instance', :update
  end

  delete '/databases/instance/destroy' do
    respond_with :'databases/instance', :destroy
  end

  get '/databases/instance/index' do
    respond_with :'databases/instance', :index
  end

  get '/databases/instance/show' do
    respond_with :'databases/instance', :show
  end

  post '/databases/user/create' do
    respond_with :'databases/user', :create
  end

  put '/databases/user/update' do
    respond_with :'databases/user', :update
  end

  delete '/databases/user/destroy' do
    respond_with :'databases/user', :destroy
  end

  get '/databases/user/index' do
    respond_with :'databases/user', :index
  end

  get '/databases/user/show' do
    respond_with :'databases/user', :show
  end


end
