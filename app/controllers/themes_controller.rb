class ThemesController < ApplicationController

  def index

  end

  def create
    @colour = params[:colour]
    @font = params[:font]
    session[:colour] = @colour
    session[:font] = @font
    redirect_to user_path(current_user)
  end

end
