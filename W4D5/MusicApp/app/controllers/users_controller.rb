class UsersController < ApplicationController
def new
  @user = User.new
end

def index
  @current_user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    login_user!(@user)
    email = UserMailer.welcome_email(@user)
    email.deliver
    redirect_to users_url
  else
    flash.now[:errors] = @user.errors.full_messages
    render :new
  end
end

def show
  @current_user = User.find_by(id: :id) || @current_user = User.new
end
private

def user_params
params.require(:user).permit[:email, :password]
end
end
