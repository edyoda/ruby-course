module Build
  extend ActiveSupport::Concern
  protected
  # user_params returns the user info from the params
  def user_params
    params.require(:user).permit!
  end
end
