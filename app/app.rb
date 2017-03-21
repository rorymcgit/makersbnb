ENV["RACK_ENV"] ||= 'development'

require 'data_mapper'
require 'sinatra/base'
require 'database_cleaner'
require 'date'
require_relative 'controllers/users'
require_relative 'controllers/spaces'
require_relative 'models/space'
require_relative 'models/user'
require_relative '../data_mapper_setup'


class MakersBnB < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

end
