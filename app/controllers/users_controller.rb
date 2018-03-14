class UsersController < ApplicationController
  def show
  	@event = Event.find(params[:id])
  	@user_events = current_user.user_events
  	@user_event = current_user.user_events.find(params[:id])
  end

  def index
  end
end
