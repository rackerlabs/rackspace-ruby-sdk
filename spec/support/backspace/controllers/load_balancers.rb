  post '/load_balancers/access_rule/create' do
    respond_with '/load_balancers/access_rule', :create
  end

  put '/load_balancers/access_rule/update' do
    respond_with '/load_balancers/access_rule', :update
  end

  delete '/load_balancers/access_rule/destroy' do
    respond_with '/load_balancers/access_rule', :destroy
  end

  get '/load_balancers/access_rule/index' do
    respond_with '/load_balancers/access_rule', :index
  end

  get '/load_balancers/access_rule/show' do
    respond_with '/load_balancers/access_rule', :show
  end

  post '/load_balancers/load_balancer/create' do
    respond_with '/load_balancers/load_balancer', :create
  end

  put '/load_balancers/load_balancer/update' do
    respond_with '/load_balancers/load_balancer', :update
  end

  delete '/load_balancers/load_balancer/destroy' do
    respond_with '/load_balancers/load_balancer', :destroy
  end

  get '/load_balancers/load_balancer/index' do
    respond_with '/load_balancers/load_balancer', :index
  end

  get '/load_balancers/load_balancer/show' do
    respond_with '/load_balancers/load_balancer', :show
  end

  post '/load_balancers/node/create' do
    respond_with '/load_balancers/node', :create
  end

  put '/load_balancers/node/update' do
    respond_with '/load_balancers/node', :update
  end

  delete '/load_balancers/node/destroy' do
    respond_with '/load_balancers/node', :destroy
  end

  get '/load_balancers/node/index' do
    respond_with '/load_balancers/node', :index
  end

  get '/load_balancers/node/show' do
    respond_with '/load_balancers/node', :show
  end

  post '/load_balancers/virtual_ip/create' do
    respond_with '/load_balancers/virtual_ip', :create
  end

  put '/load_balancers/virtual_ip/update' do
    respond_with '/load_balancers/virtual_ip', :update
  end

  delete '/load_balancers/virtual_ip/destroy' do
    respond_with '/load_balancers/virtual_ip', :destroy
  end

  get '/load_balancers/virtual_ip/index' do
    respond_with '/load_balancers/virtual_ip', :index
  end

  get '/load_balancers/virtual_ip/show' do
    respond_with '/load_balancers/virtual_ip', :show
  end

