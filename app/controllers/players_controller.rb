class PlayersController < ApplicationController
  def index
    @player = Player.all
  end
  
  def new 
    @player = Player.new
  end
  
  def create
    @player = Player.create(player_params)
    if @player.save
      redirect_to players_path
    end
  end
  
  def destroy
    @player = Player.find(params[:id])
    @Player.destroy
    redirect_to players_path
  end

 private  
  def player_params
    params.require(:player).permit!
  end
end