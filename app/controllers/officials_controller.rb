class OfficialsController < ApplicationController
  skip_before_filter :require_authentication, only: [:new, :create]
  
  def index
    @official = Official.all
  end
  
  def new 
    @official = Official.new
  end
  
  def create
    @official = Official.create(official_params)
    if @official.save
      session[:official_id] = @official.id
      redirect_to officials_path
    else 
      render 'new'
    end
  end
  
  def edit
    @official = current_official
  end
  
  def update
    current_official.update_attributes(official_params)
  end
  
  def destroy
    @official = Official.find(params[:id])
    @official.destroy
    redirect_to officials_path
  end

 private  
  def official_params
    params.require(:official).permit!
  end
end