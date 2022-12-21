class SessionsController < ApplicationController
  def new; end

  def create 
    user = User.find_by(email: sessions_params["email"].downcase)
    if user.present? && user.authenticate(sessions_params["password"])
      sessions["user_id"] = user.id
      render json: { data: "Logged in successfully", status: 200 }
    else 
      render json: { data: "Error occured", status: 400 }
    end 
  end 
  
  def destroy 
    sessions["userd_id"] = nil
    render json: { data: "Logged out Successfully", status: 200 }
  end 

  private 
  def sessions_params 
    params.permit(:email, :password)
  end 
end
