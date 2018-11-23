class Api::UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do | format |
      format.json {render json: @users}
      format.xml {render xml: eval(@users.to_json).to_xml}
    end
  end
  def create
    @user = User.new(user_params)
    respond_to do | format |
       if @user.save
           format.json {render json: @user}
           format.xml {render xml: eval(@user.to_json).to_xml}
        else
          format.json {render json: @user.errors}
          format.xml {render xml: @user.errors}
       end
    end
  end
  def record_count
    @user = User.count
    respond_to do | format |
      format.json {render json: {count: @user}}
    end
  end
  def update
    @user = User.find(params[:id])
    respond_to do | format |
       if @user.update(user_params)
           format.json {render json: @user}
           format.xml {render xml: eval(@user.to_json).to_xml}
        else
          format.json {render json: @user.errors}
          format.xml {render xml: @user.errors}
       end
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.delete
    respond_to do | format |
      format.json {render json: {message: "User with id #{@user.id} got deleted"}}
    end
  end
  private
  def user_params
    params.require(:user).permit!
  end
end
