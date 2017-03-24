class MakersBnB < Sinatra::Base

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
end
