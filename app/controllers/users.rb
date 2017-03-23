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
      Pony.mail(
      to: 'azntastic_ryan@hotmail.com',
      from: 'toobusypartying@partybnb.com',
      subject: 'Thanks!'
      body: 'for signing up to be a BIG LAD. PARTAY ONNNNN.'
      )
    else
      flash.next[:errors] = @user.errors.full_messages
      redirect '/'
    end

  end

end
