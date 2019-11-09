module ApplicationHelper

	def is_event_admin?(admin)
    current_user.id == admin.id
    end
     def attending_event?
    Event.find(params['id']).attendees.ids
    end

# https://stackoverflow.com/questions/4081744/devise-form-within-a-different-controller
     def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :email, :password, :password_confirmation, :current_password)
  end


end

