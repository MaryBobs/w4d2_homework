require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/film.rb')

also_reload('./models/*')

get '/films' do
  @films = Film.all()
  erb(:'films/index')
end

get '/films/:id' do
  @film = Film.find(params[:id].to_i)
  erb(:'films/details')
end

# get '/friends/:number' do
#   friends = ["Rachel", "Chandler", "Ross", "Joey", "Monica", "Phoebe"]
#   index = params[:number].to_i - 1
#   return friends[index]
# end
