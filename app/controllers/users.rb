class MakersBnB < Sinatra::Base

  post '/users' do

    @user = User.create(
      full_name: params[:full_name],
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:confirm_password],
    )
    if @user.save
      session[:user_id] = @user.id
      session[:user_name] = @user.username
      redirect '/spaces'
    else
      flash.next[:errors] = @user.errors.full_messages
      redirect '/'
    end

  end

end
