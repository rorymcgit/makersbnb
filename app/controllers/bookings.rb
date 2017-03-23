class MakersBnB < Sinatra::Base

  post '/bookings/new/:space_id' do
    Booking.create(user_id: session[:user_id], space_id: params[:space_id], confirmed: false )
    redirect("/bookings")
  end

  get '/bookings' do
    @bookings = Booking.all
    erb :bookings
  end

end
