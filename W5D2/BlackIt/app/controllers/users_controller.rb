class UsersController < ApplicationController


  def show
    @user = current_user
    if @user.nil?
      @user = User.new
      @subs = Sub.all
      @user_posts = Post.find_by(author: @user.name)
      render 'show'
    end
  end


  def new
    @user = User.new
  end


  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      log_in!(@user)
      @subs = Sub.all
      @user_posts = Post.find_by(author: @user.name)
      render 'show'
    else
      render 'new'
    end
  end

  def update
    @user = User.find_by(session_token: session[:session_token])
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find_by(session_token: session[:session_token])
    @user.destroy
  end

end
