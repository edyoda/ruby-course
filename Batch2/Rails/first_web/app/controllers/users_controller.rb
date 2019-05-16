class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def new
    @user = User.new
  end
  def create

  @user = User.new(user_params)
  if @user.save
    redirect_to users_path
  else
    render :new
  end

  #users_path => /users
  #users_url => http://localhost:3000/users
  end

  protected
  def user_params
    params.require(:user).permit!
  end
end
