class EventsController < ApplicationController
  def index
    @user = User.new
    @business = Business.new
    # render 'devise/session/new'
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
    @user_event = @event.user_event(current_user) # to show partial
  end

  def edit
    @event = current_business.events.find(params[:id])
  end

  def update
    @event = current_business.events.find(params[:id])
    @event.update_attributes(event_params)
    redirect_to events_path
  end

  def destroy
    current_business.events.find(params[:id]).destroy
  end

  private

  def event_params
    params.require(:event).permit(:business_id, :title, :address, :city, :state, :description, :code, :buy_link, :business_page_link, :canceled )
  end
end