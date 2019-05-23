class Api::UsersController < ApplicationController
  def index
    @user = User.all
    respond_to do | format |
      format.json {render json: {data: @user, status: 200, errors: nil, messages: "OK"}}
    end
  end
  def create
    @user = User.new(user_params)
    respond_to do | format |
      if @user.save
        format.json {render json: {data: @user, status: 200, errors: nil, messages: "SAVED"}}
      else
        format.json {render json: {status: 302, errors: @user.errors.messages, messages: "NOT SAVED"}}
      end
    end
  end
  def update
    @user = User.find(params[:id])
    respond_to do | format |
      if @user.update(user_params)
        format.json {render json: {data: @user, status: 200, errors: nil, messages: "UPDATED"}}
      else
        format.json {render json: {status: 302, errors: @user.errors.messages, messages: "NOT UPDATED"}}
      end
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do | format |
      format.json {render json: {status: 200, errors: nil, messages: "DELETED"}}
    end
  end
  def user_params
    params.require(:user).permit!
  end
end
