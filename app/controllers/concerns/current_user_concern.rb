module CurrentUserConcern
  extend ActiveSupport::Concern

  included do
    helper_method :current_user, :signed_in?
  end

  def sign_in(user)
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def signed_in?
    session[:user_id] && current_user
  end

  def authenticate_user!
    unless signed_in?
      redirect_to new_session_path
    end
  end

end
