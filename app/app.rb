ENV["RACK_ENV"] ||= 'development'

require 'data_mapper'
require 'sinatra/base'
require 'database_cleaner'
require_relative '../data_mapper_setup'
require_relative 'models/user'
require_relative './controllers/users'


class MakersBnB < Sinatra::Base

  get '/' do
    "Hello DoP3 p4rty p33ps"
    erb :'views/index'
  end 

end
