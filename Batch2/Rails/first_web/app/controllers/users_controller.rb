class UsersController < ApplicationController

  #skip_before_action :verify_session, only: [:new, :create, :signin, :authenticate]

  include Build
  puts "filed to load DB"
  #before_action :set_locale

  def index
    # cookies[:name] = {value: "Rails", expires: Time.now + 60 }
    @users = User.all #preload(:images) #.paginate(page: params[:page], per_page: 4)

  end
  def new
    @user = User.new
    @user.build_image
  end
  def create

  @user = User.new(user_params)
  if @user.save
    SendEmailMailer.welcome(@user).deliver_now!
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
      flash[:notice] = t('controller.users.sing_in_fail', locale: :dutch)
      redirect_to signin_path
    end


  end

  def logout
    session[:user_id] = nil
    redirect_to signin_path
  end
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
