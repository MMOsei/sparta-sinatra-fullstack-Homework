class SupermaltdrinkersController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  # INDEX
  get '/supermaltdrinkers' do

    @supermaltdrinkers = Supermaltdrinker.all

    erb :'supermaltdrinkers/index'
  end

  # NEW
  get '/supermaltdrinkers/new' do

    @supermaltdrinker = Supermaltdrinker.new

    erb :'supermaltdrinkers/new'
  end

  # SHOW
  get '/supermaltdrinkers/:id' do
    id = params[:id].to_i

    @supermaltdrinker = Supermaltdrinker.find id

    erb :'supermaltdrinkers/show'
  end

  # CREATE
  post '/supermaltdrinkers' do
    supermaltdrinker = Supermaltdrinker.new

    supermaltdrinker.first_name = params[:first_name]
    supermaltdrinker.last_name = params[:last_name]
    supermaltdrinker.ikea_visits = params[:ikea_visits]
    supermaltdrinker.gender = params[:gender]

    supermaltdrinker.save

    redirect '/supermaltdrinkers'
  end

  # UPDATE
  put '/supermaltdrinkers/:id' do
    id = params[:id].to_i

    supermaltdrinker = Supermaltdrinker.find id

    supermaltdrinker.first_name = params[:first_name]
    supermaltdrinker.last_name = params[:last_name]
    supermaltdrinker.supermalt_drinkers = params[:supermalt_drinkers]
    supermaltdrinker.gender = params[:gender]

    supermaltdrinker.save

    redirect '/supermaltdrinkers'
  end

  get '/supermaltdrinkers/:id/edit' do
    id = params[:id].to_i

    @supermaltdrinker = Supermaltdrinker.find id

    erb :'supermaltdrinkers/edit'
  end

  # DESTROY
  delete '/supermaltdrinkers/:id' do
    id = params[:id].to_i

    Supermaltdrinker.destroy id

    redirect '/supermaltdrinkers'

  end

end
