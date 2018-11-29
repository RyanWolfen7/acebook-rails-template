class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_url, notice: 'Logged in!'
    else
      flash[:alert] = 'Email or password is invalid.'
      render action: 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:colour] = nil
    session[:font] = nil
    redirect_to '/', notice: 'Logged out!'
  end
end
