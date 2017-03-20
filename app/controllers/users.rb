class MakersBnB < Sinatra::Base

  post '/users' do
    @user = User.new(
      username: params[:username]
    )
  end

end
