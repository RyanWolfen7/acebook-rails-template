class ThemesController < ApplicationController

  def index
    session[:colours] = @colour
    p "-- Is this working? --"
    p session[:colours]
    p @colour
    p "-- Is this working? --"
  end


end
