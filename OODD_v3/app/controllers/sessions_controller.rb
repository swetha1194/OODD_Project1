class SessionsController < ApplicationController
  include SessionsHelper
  def new
    if logged_in?
        redirect_to current_user
  end
end
  def create
    user = nil
    @admin = Admin.find_by(email: params[:session][:email].downcase)
    @member = Member.find_by(email: params[:session][:email].downcase)
    puts params[:session][:option].class
    puts params[:session][:option].to_s
    if(params[:session][:option]=="admin")
      if @admin && @admin.password == (params[:session][:password])
      log_in @admin
      redirect_to rooms_path
     else
      flash[:danger] = "Unsuccessful Login! Try Again"
  	  render 'new'
  	end
   else
      if @member && @member.password == (params[:session][:password])
      log_in @member
      redirect_to rooms_path
     else
      flash[:danger] = "Unsuccessful Login! Try Again"
  	  render 'new'
      end
    end
  end

  def destroy
    log_out
    redirect_to rooms_path
  end
end
