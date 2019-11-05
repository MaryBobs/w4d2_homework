require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/film.rb')

also_reload('./models/*')

get '/films' do
  @film = Film.all()
  erb(:'films/index')
end
