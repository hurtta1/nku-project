class TeamsController < ApplicationController
  def index
    @team = Team.all
  end
  
  def new 
    @team = Team.new
  end
  
  def create
    @team = Team.create(team_params)
    if @team.save
      redirect_to teams_path, message: "Team Created."
    else
      render 'new'
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

 private  
  def team_params
    params.require(:team).permit!
  end
end