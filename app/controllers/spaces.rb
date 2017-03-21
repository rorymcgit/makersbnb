class MakersBnB < Sinatra::Base

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end

end
