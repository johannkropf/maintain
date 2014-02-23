class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to hwservices_url, :notice => "Logged in!"
    else
      reset_session
      flash.now[:danger] = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    reset_session
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

end
