  post '/orchestration/stack/create' do
    respond_with '/orchestration/stack', :create
  end

  put '/orchestration/stack/update' do
    respond_with '/orchestration/stack', :update
  end

  delete '/orchestration/stack/destroy' do
    respond_with '/orchestration/stack', :destroy
  end

  get '/orchestration/stack/index' do
    respond_with '/orchestration/stack', :index
  end

  get '/orchestration/stack/show' do
    respond_with '/orchestration/stack', :show
  end

  post '/orchestration/resource/create' do
    respond_with '/orchestration/resource', :create
  end

  put '/orchestration/resource/update' do
    respond_with '/orchestration/resource', :update
  end

  delete '/orchestration/resource/destroy' do
    respond_with '/orchestration/resource', :destroy
  end

  get '/orchestration/resource/index' do
    respond_with '/orchestration/resource', :index
  end

  get '/orchestration/resource/show' do
    respond_with '/orchestration/resource', :show
  end

