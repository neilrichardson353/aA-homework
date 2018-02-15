class SessionsController < ApplicationController
  def new
    flash.now[:errors] ||= []
    @user = current_user
    @user ||= User.new
    render 'new'
  end

  def show
    flash.now[:errors] ||= []
    @user = current_user
    if @user.nil?
      @user = User.new
      render 'new'
    else
      @subs = Sub.all
      @user_posts = Post.find_by(author: @user.name)
      render 'show'
    end
  end

  def destroy
    @user = current_user
    log_out
  end

  def create
    @user = User.find_by_creditials(
      params[:user][:name],
      params[:user][:password])

    if @user.nil?
      @user = User.new(user_params)
      flash.now[:errors] = ["incorrect username and or password"]
      render 'new'
    else
      log_in!(@user)
      @subs = Sub.all
      @user_posts = Post.find_by(author: @user.name)
      render 'show'
    end
  end
end
