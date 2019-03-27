class UsersController < ApplicationController

  def create
    if user_params[:password] != user_params[:password_confirmation]
      redirect_to new_user_path
    else @user = User.create(user_params)
      session[:user_id] = @user.id
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
