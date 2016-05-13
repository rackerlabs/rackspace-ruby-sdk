  post '/queues/claim/create' do
    respond_with '/queues/claim', :create
  end

  put '/queues/claim/update' do
    respond_with '/queues/claim', :update
  end

  delete '/queues/claim/destroy' do
    respond_with '/queues/claim', :destroy
  end

  get '/queues/claim/index' do
    respond_with '/queues/claim', :index
  end

  get '/queues/claim/show' do
    respond_with '/queues/claim', :show
  end

  post '/queues/message/create' do
    respond_with '/queues/message', :create
  end

  put '/queues/message/update' do
    respond_with '/queues/message', :update
  end

  delete '/queues/message/destroy' do
    respond_with '/queues/message', :destroy
  end

  get '/queues/message/index' do
    respond_with '/queues/message', :index
  end

  get '/queues/message/show' do
    respond_with '/queues/message', :show
  end

