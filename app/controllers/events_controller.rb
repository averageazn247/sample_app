class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(params[:event])
    if @event.save
   
      flash[:success] = "Thanks for making a new event!"
      redirect_to @event
    else
      render 'new'
    end 

  
  
  end
  
  
end
