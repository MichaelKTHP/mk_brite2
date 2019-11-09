class UsersController < ApplicationController
  before_action :check_if_brite_admin, only: [:destroy] #Pas sur si nécessaire


  def show
    @user = User.find(params[:id])

     if current_user
       if params[:id].to_i == current_user.id.to_i
       @current_user = current_user
       else
       flash[:notice] = "Les profils des autres utilisateurs sont privés"

      redirect_to root_path

      end
    else
      flash[:notice] = "Les profils des autres utilisateurs sont privés"

      redirect_to root_path
	end

  end

  
    def edit
    @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
        if @user.update(user_params)
        redirect_to admin_root_path 
        else
        render 'edit'
        end
    end

  def destroy


    @user= User.find_by(id:params[:id])

      if @user.destroy
      flash[:notice] = "Utilisateur supprimé avec succès"


      redirect_to admin_root_path

      else
         flash[:notice] = "Utilisateur non supprimé "
        render 'index'
      end
    end  
    
    private 
      def check_if_brite_admin
        unless current_user.is_briteadmin?
           flash[:notice] = "Vous n'êtes pas Administrateur" 
           redirect_to root_path 
        end
    end
  

  


end

