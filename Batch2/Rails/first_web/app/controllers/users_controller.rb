class UsersController < ApplicationController

  before_action :verify_session, except: [:new, :create, :signin, :authenticate]

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
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to users_path
     else
       render :edit
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "Deleted successfully!  #{@user.name}"
    redirect_to users_path
  end
  def authenticate
    @user = User.auth(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Logged in"
      redirect_to users_path
    else
      flash[:notice] = "OOPs email or password does not match"
      redirect_to signin_path
    end


  end
  def verify_session
    if session[:user_id].nil?
      redirect_to signin_path
    end
  end
  def logout
    session[:user_id] = nil
    redirect_to signin_path
  end
  protected
  # user_params returns the user info from the params
  def user_params
    params.require(:user).permit!
  end
end
