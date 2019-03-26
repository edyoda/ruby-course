class UsersController < ApplicationController
  #before_action :verify_session, except: [:login, :authenticate, :new, :create]
  skip_before_action :verify_session, only:[:login, :authenticate, :new, :create]
  include UsersHelper
  def index
    @users = User.all
    # @user.images.build
  end

  def new
    @user = User.new
    @user.build_image
  end
  def create
    @user = User.new(user_params)
    if @user.save
      #SendEmailMailer.welcome(@user).deliver_now!
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
  def download_csv
    filepath = create_csv # its
    if File.exists?(filepath)
      send_file filepath, disposition: :inline
    else
      flash[:notice] = "OOPS something went wrong, Try again!"
      redirect_to users_path
    end
  end
  private
  def user_params
    params.require(:user).permit! #(:name, :email, :password, :confirm_password)
  end
end
