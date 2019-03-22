class ApplicationController < ActionController::Base
  before_action :verify_session
  private
  def verify_session
    if session[:user_id].nil?
      redirect_to root_path
    end
  end
end
