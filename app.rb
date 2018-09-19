require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

# enable :sessions
# set :session_secret, "something"



  get '/' do
    "Testing infrastructure working!"
    erb(:index)
  end

  post '/names' do
    $game = Game.new#(params[:player_1_name], params[:player_2_name])
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    # session['player_1_name'] = params[:player_1_name]
    # session['player_2_name'] = params[:player_2_name]
    redirect('/play')
  end

  get '/play' do
    # @player_1_name = session['player_1_name']
    # @player_2_name = session['player_2_name']
    erb(:play)
  end

  post '/move' do
    # @player_1_name = session['player_1_name']
    # @player_2_name = session['player_2_name']
    erb(:move)
  end

  run! if app_file == $0
end
