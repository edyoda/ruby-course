class UsersController < ApplicationController
  before_action :verify_session, except: [:login, :authenticate, :new, :create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path # status code 202, refresh the page
    else
      render :new  # status code 302, not modified state
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit # if update didnt work then 302 status code will be sent to Client,
                    # which means not to refresh the page
    end
  end
  def authenticate
    @user = User.validate_user(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Successfully logged in!"
      redirect_to users_path
    else
      flash[:notice] = "user name or password is not correct"
      render :login
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :confirm_password)
  end
  def verify_session
    if session[:user_id].nil?
      redirect_to root_path
    end
  end
end
