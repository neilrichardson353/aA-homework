class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception


  def current_user
    return nil if self.session[:session_token].nil?
    @user = User.find_by(session_token: session[:session_token])
  end

  def log_in!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
  end

  def log_out
    session[:session_token] = nil
  end

  private

  def user_params
    params.require(:user).permit(:password, :name, :email)
  end

  def sub_params
    params.require(:sub).permit(:title, :description, :moderator)
  end

  def post_params
    params.require(:post).permit(:title, :url, :content, :sub, :author)
  end  
end
