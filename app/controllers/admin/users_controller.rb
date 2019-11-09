class Admin::UsersController < Admin::BaseController
	before_action :check_if_brite_admin
	def edit
		@user = User.find(params[:id])
	end

    def update
      @user = User.find(params[:id])
        if @user.update
        redirect_to admin_root_path
        else
        render 'edit'
        end
    end

	def destroy

  	end  
end
