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
      redirect_to teams_path, flash: "Team Created."
    else
      render 'new'
    end
  end
  
  def update
    current_team.update_attributes(team_params)
    if @team.update(team_params)
        redirect_to teams_path, flash: "Team status updated"
    else
        render 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end
  
  def show
    @team = Team.find(params[:id])
  end

 private  
  def team_params
    params.require(:team).permit!
  end
end