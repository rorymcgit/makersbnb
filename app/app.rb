ENV["RACK_ENV"] ||= 'development'

require 'data_mapper'
require 'sinatra/base'
require 'database_cleaner'
require 'date'
require_relative 'controllers/users'
require_relative 'controllers/spaces'
require_relative 'controllers/bookings'
require_relative 'controllers/requests'
require_relative 'models/space'
require_relative 'models/user'
require_relative 'models/booking'
require_relative '../data_mapper_setup'


class MakersBnB < Sinatra::Base
set :root, File.dirname(__FILE__)
enable :sessions

  get '/' do
    erb :index
  end

  get '/sessions/new' do
    erb :login
  end

  post '/sessions' do
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect '/spaces'
    else
      erb :'login'
    end
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

end
