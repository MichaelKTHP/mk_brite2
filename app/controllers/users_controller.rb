class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])


     if params[:id].to_i == current_user.id.to_i
      @current_user = current_user
      else
      flash[:notice] = "Les profils des autres utilisateurs sont privés"

      redirect_to root_path

      end
	end
  


end

