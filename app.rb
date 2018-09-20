require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Application
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do

    $name_one = Player.new(params[:name_one])
    $name_two = Player.new(params[:name_two])
    redirect '/play'

  end

  get '/play' do

    @player_1 = $name_one.name
    @player_2 = $name_two.name
    erb(:play)

  end

  get '/attack' do
    @player_1 = $name_one.name
    @player_2 = $name_two.name
    erb(:attack)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
