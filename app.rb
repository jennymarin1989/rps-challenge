require 'sinatra/base'
require './lib/player'
require './lib/videogame'

class Game < Sinatra::Base


  get "/" do
    erb :index
  end

  post "/name" do
    $player_name=Player.new(params[:name])
    redirect "/play"
  end

  get "/play" do
    erb :player
  end

  post "/play" do
    "you win"
  end


  run! if app_file == $0


end
