class EventsController < ApplicationController
  before_filter :set_event, only: :show

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render event_path(@event), status: 201
    else
      redirect_to :back
    end
  end

  private

  def event_params
    params.require(:event).permit(:name)
  end

  def set_event
    @event = Event.friendly.find(params[:id])
  end
end
