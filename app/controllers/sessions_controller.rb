class SessionsController < ApplicationController
  skip_before_filter :require_authentication

  def create
    official = Official.find_by(email: session_params[:email])
    if official && official.authenticate(session_params[:password])
      session[:official_id] = official.id
      redirect_to officials_path, notice: "Welcome"
    else
      flash[:error] = "Invalid credentials"
      render :new
    end
  end

  def destroy
    session[:official_id] = nil
    redirect_to root_path, notice: "Signout Successful"
  end

private
  def session_params
    params.require(:session).permit(:email, :password)
  end
end