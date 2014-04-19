class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  
  def new 
    @team = Team.new
  end
  
  def create
    @tean = Team.new(params[:team].permit(:church_name, :contact))
    if @team.save
      redirect_to teams_path, message: "Team Created."
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

 private  
  def team_params
    params.require(:team).permit(:church_name, :contact)
  end
end