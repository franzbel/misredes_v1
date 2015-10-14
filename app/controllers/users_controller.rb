class UsersController < ApplicationController
  def index
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    @user.save
    # render(:text=>params[:user])
    # redirect_to root_path
    # render(:text=>params)
    # render(:text=>params.require(:user).permit(:name, :email))
    # render(:text=>params.permit(:controller))
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
