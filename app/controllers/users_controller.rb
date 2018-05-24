class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:user][:password] == (params[:user][:password_confirmation])
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Thanks for signing up, #{@user.username}"
        redirect_to '/'
      else
        render :new
      end
    else
      flash[:danger] = 'Passwords do not match'
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
