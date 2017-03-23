class MakersBnB < Sinatra::Base

  get '/requests' do
    @bookings = Booking.all
    @all_my_spaces = Space.all(:user_id => current_user.id)
    @users = User.all
    erb :requests
  end
end
