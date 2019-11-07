class EventsController < ApplicationController
	before_action :authenticate_user!, only: [:new]
	# pas besoin d'écrire la méthode grace à devise
	before_action :is_admin, only: [:update, :destroy, :edit]
 
  def show
    @event = Event.find_by(id:params[:id]) 
  end	

		

  def index
    @events = Event.all
		
  end

  def new
    @event = Event.new

  end

  def create
    @event = Event.new(title: params["title"],
     price: params["price"], 
     start_date: params["start_date"],
     location: params["location"], 
     description: params["description"],
     duration: params["duration"])
     @event.admin = current_user

      if @event.save # essaie de sauvegarder en base @gossip
      flash[:notice] = "Event successfully created"
      redirect_to root_path# si ça marche, il redirige vers la page d'index du site
      else
      flash[:notice] = "Formulaire incorrectement rempli"
      render :action => 'new' # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
	
  end

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


  private



 def is_admin
  	@event = Event.find(params[:id])
  	if current_user != @event.admin
  		flash[:error] = "Vous n'êtes pas le créateur de cet évenement !"
  		redirect_to event_path(@event.id)
  	end
  end





end
