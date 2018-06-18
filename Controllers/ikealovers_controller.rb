class IkealoversController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  # INDEX
  get '/ikealovers' do

    @ikealovers = Ikealover.all

    erb :'ikealovers/index'
  end

  # NEW
  get '/ikealovers/new' do

    @ikealover = Ikealover.new

    erb :'ikealovers/new'
  end

  # SHOW
  get '/ikealovers/:id' do
    id = params[:id].to_i

    @ikealover = Ikealover.find id

    erb :'ikealovers/show'
  end

  # CREATE
  post '/ikealovers' do
    ikealover = Ikealover.new

    ikealover.first_name = params[:first_name]
    ikealover.last_name = params[:last_name]
    ikealover.ikea_visits = params[:ikea_visits]
    ikealover.gender = params[:gender]

    ikealover.save

    redirect '/ikealovers'
  end

  # UPDATE
  put '/ikealovers/:id' do
    id = params[:id].to_i

    ikealover = Ikealover.find id

    ikealover.first_name = params[:first_name]
    ikealover.last_name = params[:last_name]
    ikealover.ikea_visits = params[:ikea_visits]
    ikealover.gender = params[:gender]

    ikealover.save

    redirect '/ikealovers'
  end

  get '/ikealovers/:id/edit' do
    id = params[:id].to_i

    @ikealover = Ikealover.find id

    erb :'ikealovers/edit'
  end

  # DESTROY
  delete '/ikealovers/:id' do
    id = params[:id].to_i

    Ikealover.destroy id

    redirect '/ikealovers'

  end

end
