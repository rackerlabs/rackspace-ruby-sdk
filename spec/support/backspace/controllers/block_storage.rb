  post '/block_storage/snapshot/create' do
    respond_with '/block_storage/snapshot', :create
  end

  put '/block_storage/snapshot/update' do
    respond_with '/block_storage/snapshot', :update
  end

  delete '/block_storage/snapshot/destroy' do
    respond_with '/block_storage/snapshot', :destroy
  end

  get '/block_storage/snapshot/index' do
    respond_with '/block_storage/snapshot', :index
  end

  get '/block_storage/snapshot/show' do
    respond_with '/block_storage/snapshot', :show
  end

  post '/block_storage/volume/create' do
    respond_with '/block_storage/volume', :create
  end

  put '/block_storage/volume/update' do
    respond_with '/block_storage/volume', :update
  end

  delete '/block_storage/volume/destroy' do
    respond_with '/block_storage/volume', :destroy
  end

  get '/block_storage/volume/index' do
    respond_with '/block_storage/volume', :index
  end

  get '/block_storage/volume/show' do
    respond_with '/block_storage/volume', :show
  end

  post '/block_storage/volume_type/create' do
    respond_with '/block_storage/volume_type', :create
  end

  put '/block_storage/volume_type/update' do
    respond_with '/block_storage/volume_type', :update
  end

  delete '/block_storage/volume_type/destroy' do
    respond_with '/block_storage/volume_type', :destroy
  end

  get '/block_storage/volume_type/index' do
    respond_with '/block_storage/volume_type', :index
  end

  get '/block_storage/volume_type/show' do
    respond_with '/block_storage/volume_type', :show
  end

