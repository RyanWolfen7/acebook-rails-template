class UserController < Clearance::UsersController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(post_params)
    redirect_to posts_url
  end

  private

  def post_params
     params.require(:user).permit(:user_name, :user_surname, :user_username, :user_email, :user_password)
  end

end
