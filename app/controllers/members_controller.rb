class MembersController < ApplicationController
   
  
    def index
      @user = User.all
      render json: { users: @user}
    end
    
    def destroy
      @user = User.find(params[:id])
      render json: {user: @user }
      @user.destroy
    end 
    
  end