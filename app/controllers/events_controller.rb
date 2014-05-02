class EventsController < ApplicationController
  def index
    @event = Event.all
  end
  
  def new 
    @event = Event.new
  end
  
  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to events_path, flash: "Event Created."
    else
      render 'new'
    end
  end
  
  def update
    current_event.update_attributes(event_params)
    if @event.update(event_params)
      redirect_to events_path, flash: "Event updated"
    else
        render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end
  
  def show
    @event = Event.find(params[:id])
  end

 private  
  def event_params
    params.require(:event).permit!
  end
end