# User Controller
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id), notice: 'User was successfully created'
    else
      # Later, we should try to expand this to make the flash alerts unique
      flash[:alert] = 'Sign-up failed'
      render action: 'new'
    end
  end

  def index
    current_user = User.find_by_id(session[:current_user_id])
  end

  def show
    @user = User.friendly.find(params[:id])
    @posts = Post.all
  end

  def show_post
    @user = User.find(params[:id])
    @post = Post.new
    @post = Post.create(message_params)
    @post.update("wall" => params[:id].to_i)
    @post.update("user_id" => session[:id].to_s)
    redirect_to user_path(params[:id])
  end

  private

  def post_params
    params.require(:user).permit(:firstname, :lastname, :username, :email, :password)
  end

  def message_params
    params.require(:post).permit(:message, session[:user_id])
  end
end
