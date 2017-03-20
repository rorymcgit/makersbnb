ENV["RACK_ENV"] ||= 'development'

require 'data_mapper'
require 'sinatra/base'
require 'database_cleaner'
require_relative 'controllers/users'
require_relative 'controllers/spaces'
require_relative '../data_mapper_setup'


class MakersBnB < Sinatra::Base

  get '/' do
    erb :index
  end

end
