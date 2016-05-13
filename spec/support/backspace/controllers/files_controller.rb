class FileController < Sinatra::Base
  post '/files/account/create' do
    respond_with :'files/account', :create
  end

  put '/files/account/update' do
    respond_with :'files/account', :update
  end

  delete '/files/account/destroy' do
    respond_with :'files/account', :destroy
  end

  get '/files/account/index' do
    respond_with :'files/account', :index
  end

  get '/files/account/show' do
    respond_with :'files/account', :show
  end

  post '/files/directory/create' do
    respond_with :'files/directory', :create
  end

  put '/files/directory/update' do
    respond_with :'files/directory', :update
  end

  delete '/files/directory/destroy' do
    respond_with :'files/directory', :destroy
  end

  get '/files/directory/index' do
    respond_with :'files/directory', :index
  end

  get '/files/directory/show' do
    respond_with :'files/directory', :show
  end

  post '/files/file/create' do
    respond_with :'files/file', :create
  end

  put '/files/file/update' do
    respond_with :'files/file', :update
  end

  delete '/files/file/destroy' do
    respond_with :'files/file', :destroy
  end

  get '/files/file/index' do
    respond_with :'files/file', :index
  end

  get '/files/file/show' do
    respond_with :'files/file', :show
  end

  post '/files/files/create' do
    respond_with :'files/files', :create
  end

  put '/files/files/update' do
    respond_with :'files/files', :update
  end

  delete '/files/files/destroy' do
    respond_with :'files/files', :destroy
  end

  get '/files/files/index' do
    respond_with :'files/files', :index
  end

  get '/files/files/show' do
    respond_with :'files/files', :show
  end


end