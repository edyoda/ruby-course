module UsersHelper
  def current_user_name
    unless session[:user_id].nil?
      (User.find session[:user_id]).name
    end
  end
end
