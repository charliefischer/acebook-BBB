class ScratchSessionsController < ApplicationController
  def new
  end

  def create
    user = Scratch.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "logged in successfully"
    else 
      # false.alert = "try again"
      render "new"
    end 
  end 
end
