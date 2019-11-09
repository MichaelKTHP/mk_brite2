class Admin::EventsController < Admin::BaseController
	before_action :check_if_brite_admin
  

  def destroy
  	@event= Event.find_by(id:params[:id])

  	  if @event.destroy
  	  flash[:notice] = "Evenement supprimé avec succès"


  	  redirect_to root_path
  	  end
  end
 
 def edit
  @event = Event.find(params[:id])

 end

 def update
    eventparams = params.require(:event).permit(:title, :description, :start_date, :duration, :price, :location)
    @event = Event.find(params[:id])
      if @event.update(eventparams)
      flash[:notice] = "Evenement édité avec succès"
      redirect_to root_path
      else
      flash[:notice] = "L'évenement n'a pas été édité"
      render :edit
      end
  end


  def show
    @event = Event.find_by(id:params[:id]) 

  end




  
end
