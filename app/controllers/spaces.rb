class MakersBnB < Sinatra::Base

  get '/spaces' do
    @spaces = Space.all
    @bookings = Booking.all
    erb :spaces
  end

  get '/spaces/new' do

    erb :new
  end

  post '/spaces/new' do
    space = Space.create(name: params[:name],
    description: params[:description],
    price: params[:price],
    from_date: params[:from_date],
    to_date: params[:to_date],
    user_id: session[:user_id])
    if space.save
      redirect '/spaces'
    else
      flash.now[:errors] = space.errors.full_messages
      erb :new
    end
  end

end
