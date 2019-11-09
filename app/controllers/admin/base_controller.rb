class Admin::BaseController < ApplicationController

	def check_if_brite_admin
	  unless current_user.is_briteadmin?
	  	     flash[:notice] = "Vous n'êtes pas Administrateur" 
	  	     redirect_to root_path 
	  end
    end
end
