class SubsController < ApplicationController
  before_action :set_sub, only: [:edit, :update, :destroy]

  # GET /subs
  # GET /subs.json
  def index

  end

  # GET /subs/1
  # GET /subs/1.json
  def show
  end

  # GET /subs/new
  def new

  end

  # GET /subs/1/edit
  def edit
  end

  # POST /subs
  # POST /subs.json
  def create
    flash.now[:errors] = []
    @user = current_user
    @sub = Sub.new(sub_params)
    @post = Post.new(post_params)
    @user_posts = Post.find_by(author: @user.name)

    if @sub.save && @post.save
      log_in!(@user)
      redirect_to session_url
    else
      @sub.errors.full_messages.each {|x| flash.now[:errors] << x }
      @post.errors.full_messages.each {|x| flash.now[:errors] << x }
      flash.now[:errors] << "Sub error" unless @sub.valid?
      flash.now[:errors] << "post error" unless @post.valid?
       redirect_to session_url
    end
  end

  # PATCH/PUT /subs/1
  # PATCH/PUT /subs/1.json
  def update

  end

  # DELETE /subs/1
  # DELETE /subs/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub
      @sub = Sub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

end
