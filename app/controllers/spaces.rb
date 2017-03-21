class MakersBnB < Sinatra::Base

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end

  get '/spaces/new' do

    erb :new
  end

  post '/spaces/new' do
    Space.create(name: params[:name],
    description: params[:description],
    price: params[:price],
    from_date: params[:from_date],
    to_date: params[:to_date],
    user_id: session[:user_id])
    redirect '/spaces'
  end

end
