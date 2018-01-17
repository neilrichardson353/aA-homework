class SessionsController < ActionController::Base
  before_action :require_no_user!, only: %i(create new)

def create
  user = User.find_by_credentials(
    params[:user][:username],
    params[:user][:password]
  )
  if user.nil?
    flash.now[error] = ["incorrect username/&or password"]
    render :new
  else
    login_user!(user)
    redirect_to users_url
  end
end

def show
  logout_user!
  redirect_to new_session_url
end

def new
render :new
end
end
