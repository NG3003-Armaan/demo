class UsersController < ApplicationController

  def index
    @users = User.all 
    render json: { data: @user, status: 200 }
  end 
  
  def create 
    @user = User.create(user_params)
    if @user.save 
      render json: { data: "Created a record", status: 200}
    else 
      render json: { data: "error in creating a record", status: 400 }
    end 
  end 

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      render json: { data: "Record deleted", status: 200 }
    else 
      render json: { data: "Error in deleting the record", status: 400 }
    end 
  end 

  private 

  def user_params 
    params.permit(:name, :email, :dob, :mobile)
  end 
end
