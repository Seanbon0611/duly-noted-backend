class ApplicationController < ActionController::API
  before_action :fetch_user
  

  def fetch_user
    @logged_in = logged_in?
    if logged_in?
      @user = User.find(current_user_id)
    end
  end

  private

  def current_user_id
    session[:user_id]
  end

  def log_in_user(user_id)
    session[:user_id] = user_id
  end

  def log_out_user
    session.delete(:user_id)
  end

  def logged_in?
    !!current_user_id
  end
end
