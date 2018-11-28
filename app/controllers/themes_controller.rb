class ThemesController < ApplicationController

  def new
    @theme = Theme.new
  end

  def index
    @theme = Theme.new
    session[:colour] = @theme
    p "-- Is this working? --"
    p session[:colour]
    p @theme
    p "-- Is this working? --"
  end

  private

  def post_params
    params.require(:theme).permit(:colour)
  end

end
