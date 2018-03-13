class UsersController < ApplicationController
  def show
  	@user_events = current_user.user_events
  end

  def index
  end
end
