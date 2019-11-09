class Admin::AdminController < Admin::BaseController
    before_action :check_if_brite_admin

  def index
  	@users = User.all
  	@events = Event.all
  end
end
