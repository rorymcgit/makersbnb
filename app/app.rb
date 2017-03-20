ENV["RACK_ENV"] ||= 'development'

require 'data_mapper'
require 'sinatra/base'
require_relative '../data_mapper_setup'
require_relative 'models/user'
require_relative 'controllers/users'
require_relative 'controllers/spaces'

class MakersBnB < Sinatra::Base

  get '/' do
    "Hello DoP3 p4rty p33ps"
  end

end
