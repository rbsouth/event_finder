class UserEventsController < ApplicationController
	require 'json'
  def create
  	@user = User.find(user_event_params[:user_id])
  	@event = Event.find(user_event_params[:event_id])
  	@user.events << @event
  	redirect_to event_path
  end

  def destroy
  end

  # method for...
  # creating UserEvent if it doesnt exist, otherwise updates attributes.
  # sends json obj with star images and the user event instance
  def save_change

  	@user_event = UserEvent.find_by(user: current_user, event_id: params[:event_id])
  	if !@user_event.present?
  		@user_event = UserEvent.create(user: current_user, event_id: params[:event_id], saved: params[:saved])
  	else
  		@user_event.update_attributes(saved: params[:saved])
  	end
  	respond_to do |format|
  		@img = helpers.asset_path('star.png')
  		@saved_img = helpers.asset_path('star-filled.png')
  		format.json {render json: {user_event: @user_event, img: @img, saved_img: @saved_img}}
  	end
  end

  def going_true
  	@user_event = UserEvent.find_by(user: current_user, event_id: params[:event_id])
  	if !@user_event.present?
  		@user_event = UserEvent.create(user: current_user, event_id: params[:event_id], going: true)
  	else
  		@user_event.update_attributes(going: true)
  	end
  end

  private

  def user_event_params
  	params.require(:user_event).permit(:user_id, :event_id, :going, :saved)
  end
end
