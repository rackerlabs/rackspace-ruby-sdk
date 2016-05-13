  post '/dns/record/create' do
    respond_with '/dns/record', :create
  end

  put '/dns/record/update' do
    respond_with '/dns/record', :update
  end

  delete '/dns/record/destroy' do
    respond_with '/dns/record', :destroy
  end

  get '/dns/record/index' do
    respond_with '/dns/record', :index
  end

  get '/dns/record/show' do
    respond_with '/dns/record', :show
  end

  post '/dns/records/create' do
    respond_with '/dns/records', :create
  end

  put '/dns/records/update' do
    respond_with '/dns/records', :update
  end

  delete '/dns/records/destroy' do
    respond_with '/dns/records', :destroy
  end

  get '/dns/records/index' do
    respond_with '/dns/records', :index
  end

  get '/dns/records/show' do
    respond_with '/dns/records', :show
  end

  post '/dns/zone/create' do
    respond_with '/dns/zone', :create
  end

  put '/dns/zone/update' do
    respond_with '/dns/zone', :update
  end

  delete '/dns/zone/destroy' do
    respond_with '/dns/zone', :destroy
  end

  get '/dns/zone/index' do
    respond_with '/dns/zone', :index
  end

  get '/dns/zone/show' do
    respond_with '/dns/zone', :show
  end

  post '/dns/zones/create' do
    respond_with '/dns/zones', :create
  end

  put '/dns/zones/update' do
    respond_with '/dns/zones', :update
  end

  delete '/dns/zones/destroy' do
    respond_with '/dns/zones', :destroy
  end

  get '/dns/zones/index' do
    respond_with '/dns/zones', :index
  end

  get '/dns/zones/show' do
    respond_with '/dns/zones', :show
  end

