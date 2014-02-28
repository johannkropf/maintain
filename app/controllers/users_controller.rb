class UsersController < ApplicationController
  
  before_filter :verify_session, :only => [:index, :show, :edit, :destroy, :create, :update]

  def verify_session
    unless session[:user_id]
      flash[:danger] = "You must log in to use this feature!"
      redirect_to :controller => 'sessions', :action => 'new'
    end
  end  
 
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to hwservices_url, :notice => "Signed up!"
    else
      render 'new'
    end
  end

# private
#   def user_params
#     params.require(:user).permit(:name, :email, :password,
#                                :password_confirmation)
#   end
end
