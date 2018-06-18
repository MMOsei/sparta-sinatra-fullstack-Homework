require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'models/Ikea.rb'
require_relative 'models/Supermalt.rb'
require_relative 'controllers/ikea_controller.rb'
require_relative 'controllers/supermalt_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

run IkeaController
use SupermaltController
