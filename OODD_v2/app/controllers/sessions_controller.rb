class SessionsController < ApplicationController
  include SessionsHelper
  def new
    if logged_in?
        redirect_to current_user
  end
end
  def create
    user = nil
    admin = Admin.find_by(email: params[:session][:email])
    member = Member.find_by(email: params[:session][:email])
    #puts params[:session][:option].class
    #puts params[:session][:option].to_s
    if(params[:session][:option]=="admin")
      user = admin
    else
      user = member
    end
    
    if user #&& user.password == (params[:session][:password])
      log_in user
      redirect_to root_path
     else
      flash[:danger] = "This sucks"
  	  render 'new'
  	end
  end
  def destroy
    log_out
    redirect_to root_path
  end
end
