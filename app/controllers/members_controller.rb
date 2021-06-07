class MembersController < ApplicationController
    before_action :authenticate_user!
  
    def show
      @user = User.all
      render json: { users: @user, current_user: current_user }
    end
  end