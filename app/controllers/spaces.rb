class MakersBnB < Sinatra::Base

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end

  get '/spaces/new' do
    if !current_user
      flash.next[:errors] = "Please sign in"
      redirect '/sessions/new'
    else
      erb :new
    end
  end

  post '/spaces/new' do
    space = Space.create(name: params[:name],
    description: params[:description],
    price: params[:price],
    from_date: params[:from_date],
    to_date: params[:to_date],
    user_id: current_user.id, media: params[:media_url] )
    if space.save
      redirect '/spaces'
    else
      flash.now[:errors] = space.errors.full_messages
      erb :new
    end
  end

end
