require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'models/Ikealovers.rb'
require_relative 'controllers/home_controller.rb'
require_relative 'controllers/ikealovers_controller.rb'


use Rack::Reloader
use Rack::MethodOverride

run Rack::Cascade.new([
  HomeController,
  IkealoversController,
  SupermaltdrinkersController
])
