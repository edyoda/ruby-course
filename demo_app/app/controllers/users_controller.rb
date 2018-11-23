class UsersController < ApplicationController
  def index
    @users = User.all
    logger.debug("--------#{@users.inspect}")
    custome_logger.info("--------#{@users.inspect}")
  end

#GET /users/new
  def new
    @user = User.new
  end
#POST /userrs # create method takes all the values from the new.html.erb and save into DB
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.welocome(@user).deliver_now!
      redirect_to edit_user_path(@user.id)
    else
      render "new"
    end
  end
#GET /users/:id/edit
  def edit
    @user = User.find(params[:id])
  end
#PATCH /users/:id # update method takes all the values from the edit.html.erb and save into DB
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render "new"
    end
  end
  # GET /users/:id display the data for every individual
  def show
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.delete
    flash[:notice] = "Successfully deleted!"
    redirect_to users_path
  end
  def upload_image


  end
  def gallery
    @image = Image.all
  end
  def process_images
    params[:image]['photo'].each do | each_image |
     Image.create(photo: each_image)
   end
     redirect_to gallery_users_path
  end
  private
  def user_params
  # params contains meta data along with actual data so below logic will return the actual data which will get use
  # by the create or update actions
    params.require(:user).permit!
  end
end
