class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:user][:password] == (params[:user][:password_confirmation])
      @user = User.new(user_params)
      @user.x_app_token = @user.x_app_token_request

      if @user.save
        session[:user_id] = @user.id
        flash[:success] = "Thanks for signing up, #{@user.username}"
        redirect_to user_path(@user)
      else
        flash[:success] = "Username already taken!"
        render :new
      end
    else
      flash[:danger] = 'Passwords do not match'
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
    @quote = QuoteSearch.new.quote
  end

  def update
    current_user.update(user_params)

    redirect_to user_path(current_user)
  end

  def edit
    @user = current_user
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :profile_pic)
  end
end
