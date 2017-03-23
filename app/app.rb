ENV["RACK_ENV"] ||= 'development'

require 'data_mapper'
require 'sinatra/base'
require 'sinatra/flash'
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
register Sinatra::Flash
set :root, File.dirname(__FILE__)
use Rack::MethodOverride
enable :sessions

  configure do
    Dotenv.load('../.env')
    :via => smtp,
    :via_options => {
        :address => 'smtp.sendgrid.net',
        :port => '587',
        :domain => 'https://partybnb.herokuapp.com/',
        :user_name => ENV['SENDGRID_USERNAME'],
        :password => ENV['SENDGRID_PASSWORD'],
        :authentication => :plain,
        :enable_starttls_auto => true
  end

  get '/' do
    'WASSUP EMAIL'
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
      flash.now[:errors] = ['Invalid email address or password']
      erb :login
    end
  end

  delete '/sessions' do
    session[:user_id] = nil
    puts "Hello"
    redirect '/spaces'
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end

end
