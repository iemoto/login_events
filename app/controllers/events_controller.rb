class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to root_path
    else
      render :new 
    end
  end

  private
  def event_params
      params.require(:event).permit(:title, :description, :start_date, :end_date).merge(user_id: current_user.id)
  end

end
