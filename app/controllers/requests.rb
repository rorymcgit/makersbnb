class MakersBnB < Sinatra::Base

  get '/requests' do
    if !current_user
      flash.next[:errors] = "Please sign in"
      redirect '/sessions/new'
    else
      @all_my_spaces = Space.all(:user_id => current_user.id)
      erb :requests
    end
  end

  post '/requests/approve/:booking_space_id/:requested_user_id' do
    @bookings = Booking.all(space_id: params[:booking_space_id].to_i, user_id: params[:requested_user_id] )
    Booking.confirm(@bookings)
    redirect('/requests')
  end

end
