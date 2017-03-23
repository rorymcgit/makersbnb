class MakersBnB < Sinatra::Base

  get '/requests' do
    @bookings = Booking.all
    @all_my_spaces = Space.all(:user_id => current_user.id)
    @users = User.all
    erb :requests
  end

  post '/requests/approve/:booking_space_id/:requested_user_id' do
    @bookings = Booking.all
    @bookings.each do |booking|
      if booking.space_id == params[:booking_space_id].to_i
        if booking.user_id == params[:requested_user_id].to_i
          booking.update(:confirmed => true)
        end
      end
    end
    redirect('/requests')
  end

end
