class EventsController < ApplicationController

  


  def index
    
  end

  def show
    @user = current_user
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      flash[:notice] = "Event created successfully"
      redirect_to @event
    else
      flash[:alert] = "Something went wrong, please check your inputs."
      render :new
    end

  end 
  
  private
    def event_params
        params.require(:event).permit(:name, :date, :description, :location)
    end

end
