class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = current_business.events.new
  end

  def create
    @event = current_business.events.create(event_params)
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:business_id, :title, :address, :city, :state, :description, :code, :buy_link, :business_page_link, :canceled )
  end
end