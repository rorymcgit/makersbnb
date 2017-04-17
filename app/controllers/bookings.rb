class MakersBnB < Sinatra::Base

  post '/bookings/new/:space_id' do
    Booking.create(user_id: session[:user_id], space_id: params[:space_id], confirmed: false )
    redirect("/bookings")
  end

  get '/bookings' do
    if !current_user
      flash.next[:errors] = "Please sign in"
      redirect '/sessions/new'
    else
      @bookings = Booking.all
      erb :bookings
    end
  end

end
