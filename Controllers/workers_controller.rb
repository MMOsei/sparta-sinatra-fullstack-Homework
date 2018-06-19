class WorkersController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  # INDEX
  get '/workers' do

    @workers = Worker.all

    erb :'workers/index'
  end

  # NEW
  get '/workers/new' do

    @worker = Worker.new

    erb :'workers/new'
  end

  # SHOW
  get '/workers/:id' do
    id = params[:id].to_i

    @worker = Worker.find id

    erb :'workers/show'
  end

  # CREATE
  post '/workers' do
    worker = Worker.new

    worker.first_name = params[:first_name]
    worker.last_name = params[:last_name]
    worker.employer = params[:employer]
    worker.salary = params[:salary]

    worker.save

    redirect '/workers'
  end

  # UPDATE
  put '/workers/:id' do
    id = params[:id].to_i

    worker = Worker.find id

    worker.first_name = params[:first_name]
    worker.last_name = params[:last_name]
    worker.employer = params[:employer]
    worker.salary = params[:salary]

    worker.save

    redirect '/workers'
  end

  get '/workers/:id/edit' do
    id = params[:id].to_i

    @worker = Worker.find id

    erb :'workers/edit'
  end

  # DESTROY
  delete '/workers/:id' do
    id = params[:id].to_i

    Worker.destroy id

    redirect '/workers'

  end

end
