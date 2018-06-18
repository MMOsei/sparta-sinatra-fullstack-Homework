require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'models/Ikealovers.rb'
require_relative 'models/Supermaltdrinkers.rb'
require_relative 'controllers/home_controller.rb'
require_relative 'controllers/ikealovers_controller.rb'
require_relative 'controllers/supermaltdrinkers_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

run HomeController
use IkealoversController
use SupermaltdrinkersController
