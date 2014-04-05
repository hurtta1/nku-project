class PlayersController < ApplicationController
  def index
  end
  
  def new 
    @player = Player.new
  end
  
  def create
    @player = Player.new(params[:player].permit(:name, :number, :email, :age))
    if @player.save
      redirect_to player_path, message: "Successfully signed up!."
    end
  end
  
  def destroy
    @player = Player.find(params[:id])
    @Player.destroy
    redirect_to players_path
  end

 private  
  def player_params
    params.require(:player).permit(:name, :number, :age)
  end
end