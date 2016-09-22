class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to current_user
    end
  end
  def destroy
    log_out
    redirect_to root_path
  end
end
